import 'package:flutter/material.dart';

class TopBarNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 35.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
