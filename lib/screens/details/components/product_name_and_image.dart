import 'package:flutter/material.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';

class ProductNameAndImages extends StatefulWidget {
 final BestSellingProductModel bestSellingProductModel;

  const ProductNameAndImages({Key key, this.bestSellingProductModel}) : super(key: key);

  @override
  _ProductNameAndImagesState createState() => _ProductNameAndImagesState();
}

class _ProductNameAndImagesState extends State<ProductNameAndImages> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
