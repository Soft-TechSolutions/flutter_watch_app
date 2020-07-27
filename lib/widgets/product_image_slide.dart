import 'package:flutter/material.dart';

class ProductImageSlide extends StatelessWidget {
  final List<dynamic> productImages;
  final String id;

  const ProductImageSlide({Key key, this.productImages, this.id }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productImages == null ? 0 : productImages.length,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(right: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Container(
          child: Image(
        image: AssetImage(productImages[index].toString(),),
            fit: BoxFit.cover,
      )),
    );
  }
}
