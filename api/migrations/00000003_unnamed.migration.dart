import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration3 extends Migration { 
  @override
  Future upgrade() async {
   		database.addColumn("permission_parameter", SchemaColumn.relationship("userAcessModel", ManagedPropertyType.integer, relatedTableName: "user_access", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
		database.deleteColumn("permission_parameter", "userModel");
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    