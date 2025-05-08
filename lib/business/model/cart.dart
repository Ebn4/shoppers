import 'package:shoppers/business/model/cartItem.dart';

class Cart {
  String id;
  String UserId;
  String status;
  List<Cartitem> cartItem;

  Cart({
    required this.id,
    required this.UserId,
    required this.status,
    required this.cartItem,
  });
}
