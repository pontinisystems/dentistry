import 'package:dentistry_api/routers/doctor_router.dart';
import 'package:dentistry_api/routers/patient_router.dart';
import 'package:dentistry_api/routers/user_router.dart';
import 'package:dentistry_api/routers/work_invitation_router.dart';
import 'model/work_invitation.model.dart';
import 'model/procedure_model.dart';
import 'model/doctor_clinic_model.dart';
import 'model/user_model.dart';
import 'model/clinic_model.dart';
import 'model/address_model.dart';
import 'model/doctor_model.dart';
import 'model/patient_model.dart';
import 'model/doctor_clinic_model.dart';
import 'model/parameter_model.dart';
import 'model/payment_model.dart';
import 'model/login_model.dart';
import 'model/plan_model.dart';
import 'model/item_plan.dart';
import 'dentistry_api.dart';
/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class DentistryApiChannel extends ApplicationChannel {
  ManagedContext context;

  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));

    final config = DentistryApiConfiguration(options.configurationFilePath);
    context = contextWithConnectionInfo(config.database);
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();
     
    UserRouter.configure(router, context);
    DoctorRouter.configure(router, context);
    WorkInvitationRouter.configure(router, context);
    PatientRouter.configure(router, context);

    return router;
  }

  /*
   * Helper methods
   */

  ManagedContext contextWithConnectionInfo(DatabaseConfiguration connectionInfo) {
    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    final psc = PostgreSQLPersistentStore(connectionInfo.username, connectionInfo.password, connectionInfo.host,
        connectionInfo.port, connectionInfo.databaseName);

    return ManagedContext(dataModel, psc);
  }
}

/// An instance of this class reads values from a configuration
/// file specific to this application.
///
/// Configuration files must have key-value for the properties in this class.
/// For more documentation on configuration files, see https://aqueduct.io/docs/configure/ and
/// https://pub.dartlang.org/packages/safe_config.
class DentistryApiConfiguration extends Configuration {
  DentistryApiConfiguration(String fileName) : super.fromFile(File(fileName));

  DatabaseConfiguration database;
}
