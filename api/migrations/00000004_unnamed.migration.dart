import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration4 extends Migration { 
  @override
  Future upgrade() async {
   		database.alterColumn("work_invitation", "isActive", (c) {c.defaultValue = "true";});
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    