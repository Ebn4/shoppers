import 'package:shoppers/business/model/cart.dart';
import 'package:shoppers/business/model/product.dart';

abstract class ShopperService {
  Future<List<Product>> getProducts();
  Future<Product> getProduct(id);
  Future<void> addCart();
  Future<Cart> getCart();
}
