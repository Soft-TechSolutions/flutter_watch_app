import 'package:flutter/material.dart';
import 'package:flutter_watch_product/provider/products_provider.dart';
import 'package:flutter_watch_product/screens/product_details_screen.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(WatchApp());
}

class WatchApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Watch Product App',
        debugShowCheckedModeBanner: false,
        home:HomeScreen(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[200]
        ),
        routes: {ProductDetails.routeName:(context) => ProductDetails()},

      ),
    );
  }
}


