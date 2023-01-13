import 'package:equatable/equatable.dart';


import 'models.dart';

class Cart extends Equatable{
  final List<Product> products;
    const Cart({this.products = const <Product>[]});


// Check and change quantity method
  Map productQuantity(products) {
    var quantity = Map();
    
    this.products.forEach((product) {
      if (!quantity.containsKey(product)){
        quantity[product] = 1;
      }
      else {quantity[product] += 1 ;}
     });
     return quantity;
    }
  


// Fee calculated methods
double get subtotal =>  products.fold(0, (total, current) => total + current.price);

double deliveryFee(subtotal) {
  if (subtotal >= 30.0) {
    return 0.0;
  } return 5.0;
}

String freeDelivery(subtotal){
  if (subtotal >= 30.0) {
    return 'You have free delivery';
  } else {
    double missing = 30.0 - subtotal;

    return 'Add ${missing.toStringAsFixed(2)} ₾ for free delivery';
  }
  
}

double total (subtotal, deliveryFee) {
  return subtotal + deliveryFee;
}

//ToString methods 

String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

String get subtotalString => subtotal.toStringAsFixed(2);

String get totalString => total(subtotal, deliveryFee(subtotal)).toStringAsFixed(2);

String get freeDeliveryString => freeDelivery(subtotal);


  @override
  List<Object?> get props => [products];
}