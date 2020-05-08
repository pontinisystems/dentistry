
class EntityNotFound implements Exception {
  final String msg;
  const EntityNotFound(this.msg);
  String toString() => '$msg';
}