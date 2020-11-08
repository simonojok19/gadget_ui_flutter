import 'package:flutter/material.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';

class ProductFeatures extends StatefulWidget {
  final BestSellingProductModel bestSellingProductModel;

  const ProductFeatures({Key key, this.bestSellingProductModel}) : super(key: key);
  @override
  _ProductFeaturesState createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
