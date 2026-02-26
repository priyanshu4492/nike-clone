import 'package:nikyee/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe>  shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: "1400",
      description: "the forward-thinking design of his latest signature",
      imagePath: 'assets/images/5.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: "1400",
      description: "the forward-thinking design of his latest signature",
      imagePath: 'assets/images/5.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: "1400",
      description: "the forward-thinking design of his latest signature",
      imagePath: 'assets/images/5.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: "1400",
      description: "the forward-thinking design of his latest signature",
      imagePath: 'assets/images/5.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: "1400",
      description: "the forward-thinking design of his latest signature",
      imagePath: 'assets/images/5.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: "1400",
      description: "the forward-thinking design of his latest signature",
      imagePath: 'assets/images/5.jpg',
    ),
  ];

  //list of item in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add item in the cart
    void addItemToCart(Shoe shoe){
      userCart.add(shoe);
      notifyListeners();
    }

  //remove item from the cart

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
