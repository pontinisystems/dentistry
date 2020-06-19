import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration8 extends Migration { 
  @override
  Future upgrade() async {
   		database.deleteColumn("patient", "address");
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    