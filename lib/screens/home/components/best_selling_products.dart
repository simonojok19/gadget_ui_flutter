import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/data/data.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';

class BestSellingProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: bestSellingProductsList.length,
        itemBuilder: (context, index) {
          return _buildBestSellingProduct(context, index);
        },
      ),
    );
  }

  Widget _buildBestSellingProduct(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    BestSellingProductModel bestSellingProductModel = bestSellingProductsList[index];
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appPadding / 2,
        horizontal: appPadding / 3,
      ),
      child: Container(
        width: size.width * 0.8,
        color: brown,
      ),
    );
  }
}
