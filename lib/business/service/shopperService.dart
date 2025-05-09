import 'package:shoppers/business/model/cart.dart';
import 'package:shoppers/business/model/product.dart';
import 'package:shoppers/business/model/user.dart';

abstract class ShopperService {
  Future<List<Product>> getProducts();
  Future<Product> getProduct(id);
  Future<void> addCart();
  Future<Cart> getCart();
  Future<List<User>> getUsers();
  Future<User> getUser(id);
}
