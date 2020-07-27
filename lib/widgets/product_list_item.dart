import 'package:flutter/material.dart';
import 'package:flutter_watch_product/screens/product_details_screen.dart';

class ProductListItem extends StatelessWidget {
  final String productId;
  final String name;
  final String price;
  final String thumb;

  const ProductListItem({Key key, this.productId, this.name, this.price, this.thumb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.7),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Column(
        children: <Widget>[
         Image.asset(
               this.thumb),

          Container(
            padding: EdgeInsets.only(left: 12,right: 12.0),
            child: Text(
              this.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: 22.0),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            this.price,
            style: TextStyle(
                color: Color(0xFFFFC72C), fontSize: 17.0),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonTheme(
            minWidth: 180,
            child: FlatButton(
              color: Color(0xFFFFC72C),
              child: Text(
                'VIEW',
                style: TextStyle(fontSize: 14.0),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  ProductDetails.routeName,
                  arguments: this.productId
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
