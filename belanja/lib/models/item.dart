import 'package:flutter/widgets.dart'; 

class Item {
  String name;
  int price;
  Image? image;
  int stok;
  double rating;
  String description;

  Item({
    required this.name,
    required this.price,
    this.image,
    this.stok = 0,        
    this.rating = 0.0,    
    this.description = '', 
  });
}