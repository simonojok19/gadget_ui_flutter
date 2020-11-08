import 'package:flutter/material.dart';
import 'package:gadgets_store_app/data/data.dart';

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

  Widget _buildBestSellingProduct(BuildContext context, int index) {}
}
