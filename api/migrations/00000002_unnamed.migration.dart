import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
   		database.addColumn("doctor", SchemaColumn.relationship("userAcess", ManagedPropertyType.integer, relatedTableName: "user_access", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: false, isUnique: true));
		database.deleteColumn("doctor", "user");
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    