import 'package:flutter/material.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/screens/details/components/custom_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  final BestSellingProductModel bestSellingProductModel;

  const DetailsScreen({Key key, this.bestSellingProductModel}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar()
        ],
      ),
    );
  }
}
