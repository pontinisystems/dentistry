import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration7 extends Migration { 
  @override
  Future upgrade() async {
   		database.addColumn("item_plan", SchemaColumn.relationship("planModel", ManagedPropertyType.integer, relatedTableName: "plan", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: true));
		database.deleteColumn("item_plan", "_planModel");
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    