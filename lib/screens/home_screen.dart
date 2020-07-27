import 'package:flutter/material.dart';
import 'package:flutter_watch_product/widgets/product_listview.dart';
import 'package:flutter_watch_product/widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/home_bg.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.7)
                ])),
            child: Column(
              children: <Widget>[
               TopBarNav(),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "BREITLING WATCH \nCOLLECTION",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: 80.0,
                        padding: EdgeInsets.only(top: 15.0),
                        child: Divider(
                          thickness: 6.0,
                          color: Color(0xFFFFC72C),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: ProductListView()
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          )),
    );
  }
}
