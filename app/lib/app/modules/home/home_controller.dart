import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/models/accept_work_invitation_model.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/service/i_user_service.dart';
import 'package:dentistry/app/service/i_work_invitation_service.dart';
import 'package:dentistry/app/utils/store_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  IUserService _userService;
  IWorkInvitationService _workInvitationService;

  _HomeControllerBase(this._userService, this._workInvitationService);

  @observable
  ObservableFuture<List<WorkInvitationModel>> _works;

  @observable
  ObservableList<WorkInvitationModel> works;

 @observable
  ObservableFuture<bool> _acceptWork;


  @computed
  StoreState get stateAccepetWork => StoreUtils.statusCheck(_acceptWork);

  @observable
  Message errorMessage = Message();

  @computed
  StoreState get state => StoreUtils.statusCheck(_works);

  @observable
  bool isLogged;

  Future<void> initApp() async {
    bool isLogged = await _userService.isLogged();

    if (!isLogged) {
      
      Get.offAllNamed('/login');
    } else {
      fetchMyWorkInvitation();
    }
  }


  @action
  acceptWorkInvitation(int idWorkInvitation) async {
      try{

        await _workInvitationService.acceptWork(AcceptWorkInvitationModel(idWorkInvitation: idWorkInvitation, isAccepet: true));
          fetchMyWorkInvitation();
      }on DioError catch (e) {
       print("object"+e.toString());
        if (e.response != null) {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure,
              description: e.response.data['message']);
        } else {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure, description: tryagainLater);
        }
      } catch (e,s) {
       print("object"+e.toString());
        errorMessage = errorMessage.copyWith(
            title: eunexpectedError, description: tryagainLater);
      }


  }


  @action  
  fetchMyWorkInvitation() async {
    try {
      _works =
          ObservableFuture(_workInvitationService.fetchMyWorkInvitations());
      List<WorkInvitationModel> result = await _works;
      works = result.asObservable();
      print(works.length);
    
    }on DioError catch (e) {
       print("object");
        if (e.response != null) {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure,
              description: e.response.data['message']);
        } else {
          errorMessage = errorMessage.copyWith(
              title: unexpectedFailure, description: tryagainLater);
        }
      } catch (e,s) {
        errorMessage = errorMessage.copyWith(
            title: eunexpectedError, description: tryagainLater);
      }
  }
}
