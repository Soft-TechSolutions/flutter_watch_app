import 'package:flutter/material.dart';
import 'package:flutter_watch_product/widgets/product_image_slide.dart';
import 'package:flutter_watch_product/widgets/top_bar.dart';
import 'package:provider/provider.dart';
import '../provider/products_provider.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    final product =
        Provider.of<Products>(context, listen: false).getProductById(productId);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/detail_bg.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.7)
          ])),
          child: Stack(
            children: <Widget>[
              TopBarNav(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.3,
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 32),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        width: 80.0,
                        padding: EdgeInsets.only(top: 7.0),
                        child: Divider(
                          thickness: 6.0,
                          color: Color(0xFFFFC72C),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        product.price,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Expanded(
                        child: Text(
                          product.description,
                          style:
                              TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width - 35,
                        height: 40,
                        child: FlatButton(
                          color: Color(0xFFFFC72C),
                          child: Text(
                            'CALL TO BUY',
                            style: TextStyle(fontSize: 17.0),
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  height: MediaQuery.of(context).size.height / 1.7,
                  child: Center(
                      child: ProductImageSlide(productImages: product.images,id:product.productId)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
