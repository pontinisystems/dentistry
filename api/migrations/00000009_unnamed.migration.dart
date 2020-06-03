import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration9 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("permission_parameter", [SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false)]));
		database.addColumn("permission_parameter", SchemaColumn.relationship("userModel", ManagedPropertyType.integer, relatedTableName: "user_person", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
		database.addColumn("permission_parameter", SchemaColumn.relationship("parameterModel", ManagedPropertyType.integer, relatedTableName: "parameter", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false));
		database.alterColumn("parameter", "lastModifieldDate", (c) {c.defaultValue = "now()";});
		database.alterColumn("parameter", "createdDate", (c) {c.defaultValue = "now()";});
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    