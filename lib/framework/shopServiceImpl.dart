import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shoppers/business/model/cart.dart';
import 'package:shoppers/business/model/product.dart';
import 'package:shoppers/business/model/user.dart';
import 'package:shoppers/business/service/shopperService.dart';
import 'package:http/http.dart' as http;

class ShopServiceimpl implements ShopperService {
  final String baseUrl = dotenv.env['API_URL'] ?? 'http://localhost/api';
  @override
  Future<void> addCart() {
    // TODO: implement addCart
    throw UnimplementedError();
  }

  @override
  Future<Cart> getCart() {
    // TODO: implement getCart
    throw UnimplementedError();
  }

  @override
  Future<Product> getProduct(id) async {
    var apiUrl = Uri.parse('http://127.0.0.1:8000/api/products/${id}');
    var data = http.get(apiUrl);
    return Product();
  }

  @override
  Future<List<Product>> getProducts() async {
    var apiUrl = Uri.parse('$baseUrl/products');
    var data = await http.get(apiUrl);
    if (data.statusCode == 200) {
      print(data.body);
    } else {
      print("Erreur");
    }

    return [Product()];
  }

  @override
  Future<User> getUser(id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers() async{
    var apiUrl = Uri.parse('http://192.168.247.71/api/users');
    var data = await http.get(apiUrl);
    if(data.statusCode == 200){
      print(data.body);
    }else{
      print("Erreur");
    }

    print(data.statusCode);
    return [User(id: 2, email: "email", name: "name", password: "password")];
  }
}


void main() async{
  ShopServiceimpl test = ShopServiceimpl();
  var data = await test.getUsers();
  print(data);
}
