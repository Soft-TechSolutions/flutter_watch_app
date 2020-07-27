import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier{

  List<Product> _products = [

    Product(
      productId: "prod1",
      name: "AVENGER AUTOMATIC GMT 43",
      price: "USD 3,975.00",
      description: "Bold, extremely robust and shock resistant, the Avenger Automatic GMT 43 features an additional red hand indicating a second time zone. As a true Breitling Avenger, it can be used wearing gloves and offers unrivalled safety and reliability to any airborne adventurer.",
      thumb: "assets/images/watches/avenger-automatic-gmt.png",
      images: [
        "assets/images/watches/avenger-automatic-gmt.png",
        "assets/images/watches/avenger-automatic-gmt01.png",
       ],
      ),

    Product(
      productId: "prod2",
      name: "SUPER AVENGER CHRONOGRAPH 48",
      price: "USD 5,405.00",
      description: "Bold, extremely robust and shock resistant, the Super Avenger Chronograph 48 makes a big “here I am” statement. As a true Breitling Avenger, it can be used wearing gloves and offers unrivalled safety and reliability to any airborne adventurer. Featuring a unique white dial, this Super Avenger is limited to 1000 pieces.",
      thumb: "assets/images/watches/super-avenger.png",
      images: [
        "assets/images/watches/super-avenger.png",
        "assets/images/watches/super-avenger01.png",
      ],
    ),

    Product(
      productId: "prod3",
      name: "SUPEROCEAN HERITAGE '57",
      price: "USD 5,225.00",
      description: "The Superocean Heritage ’57 Capsule collection pays tribute to the original 1957 SuperOcean and the cool, laid-back surfing lifestyle of the 1960s.",
      thumb: "assets/images/watches/superocean-heritage.png",
      images: [
        "assets/images/watches/superocean-heritage.png",
        "assets/images/watches/superocean-heritage01.png",
      ],
    )
  ];

  List<Product> get productLists{
    return [..._products];
  }

  Product getProductById(String id){
    return productLists.firstWhere((element) => element.productId==id);
  }


}
