import 'package:aqueduct/aqueduct.dart';

class PaymentModel extends ManagedObject<_PaymentModel>
    implements _PaymentModel {}

enum TipoPayment{
  money, creditCard
}

@Table(name: 'payment')
class _PaymentModel {
  @Column(primaryKey: true, autoincrement: true)
  int id;


  @Column(unique: true)
  TipoPayment type;

}
