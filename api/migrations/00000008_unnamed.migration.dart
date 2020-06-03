import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration8 extends Migration { 
  @override
  Future upgrade() async {
   		database.alterColumn("parameter", "lastModifieldDate", (c) {c.defaultValue = "NOW()";});
		database.alterColumn("parameter", "createdDate", (c) {c.defaultValue = "NOW()";});
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    