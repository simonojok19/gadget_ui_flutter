import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/screens/home/components/best_selling_products.dart';
import 'package:gadgets_store_app/screens/home/components/popular_products.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      // height is 0.55
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(40.0)
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: appPadding,
          left: appPadding / 2
        ),
        child: Column(
          children: [
            _buildPopularHeader(),
            PopularProducts(),
            _buildBestSellingHeader(),
            BestSellingProducts(),
          ],
        ),
      ),
    );
  }

  Padding _buildBestSellingHeader() {
    return Padding(
            padding: EdgeInsets.only(
              right: appPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '01/06',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          );
  }

  Padding _buildPopularHeader() {
    return Padding(
            padding: EdgeInsets.only(
              right: appPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '01/20',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          );
  }
}
