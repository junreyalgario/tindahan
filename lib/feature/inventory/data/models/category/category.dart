import 'package:realm/realm.dart';

part 'category.realm.dart';

@RealmModel()
class _Category {
  @PrimaryKey()
  late int id;
  late String name;
  late DateTime createdAt;
  late DateTime updatedAt;
}
