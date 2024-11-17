import 'package:realm/realm.dart';

part 'product.realm.dart';

@RealmModel()
class _Product {
  @PrimaryKey()
  late int id;
  String? photo;
  late String name;
  late double price;
  late double cost;
  late DateTime createdAt;
  late DateTime updatedAt;
}
