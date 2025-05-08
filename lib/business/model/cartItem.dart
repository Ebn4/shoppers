import 'package:shoppers/business/model/product.dart';

class Cartitem {
  String id;
  Product product;
  int quantity;

  Cartitem({required this.id, required this.product, required this.quantity});
}
