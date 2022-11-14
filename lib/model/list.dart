import 'package:flutter/material.dart';

class ProductList {
  final String img;
  final String title;
  final String category;
  final double price;
  double quantity = 1;
  double? totalPrice;


  ProductList(this.img, this.title, this.category, this.price);

  static List<ProductList> productList() {
    return [
      ProductList("images/headphone.png", "AKG N700NCM2 Wireless", "Headphones", 199.00),
      ProductList("images/headphone.png", "AIAIAI TMA-2 Modular", "Headphones", 250.00),
      ProductList("images/headphone.png", "AKG N700NCM2 Wireless", "Headphones", 199.00),
      ProductList("images/headphone.png", "AIAIAI TMA-2 Modular", "Headphones", 250.00),
    ];
  }
}

class AccesoriesList {
  final String img;
  final String title;
  final String stock;
  final String price;


  AccesoriesList(this.img, this.title, this.stock, this.price);

  static List<AccesoriesList> accesoriesList() {
    return [
      AccesoriesList("images/accessoris2.png", "AIAIAI 3.5mm Jack 2mr", "Available", "\$25.00"),
      AccesoriesList("images/accessories1.png", "AIAIAI 3.5mm Jack 1.5mr", "Unavailable", "\$15.00"),
      AccesoriesList("images/accessoris2.png", "AIAIAI 3.5mm Jack 2mr", "Available", "\$25.00"),
      AccesoriesList("images/accessories1.png", "AIAIAI 3.5mm Jack 1.5mr", "Unavailable", "\$15.00"),
    ];
  }
}
