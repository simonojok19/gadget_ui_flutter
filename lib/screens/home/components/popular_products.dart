import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/data/data.dart';
import 'package:gadgets_store_app/models/popular_product_model.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularProductsList.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return _buildPopularProducts(context, index);
        },
      ),
    );
  }

  Widget _buildPopularProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    PopularProductModel popularProductModel = popularProductsList[index];
    return Container(
      width: size.width * 0.3,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: appPadding / 4),
            child: Container(
              width: size.width * 0.2,
              height: size.height * 0.09,
              decoration: BoxDecoration(
                color: brown,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding / 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${popularProductModel.price}',
                      style: TextStyle(
                        color: white,
                        fontSize: 20
                      ),
                    ),
                    Text(
                      '\$${popularProductModel.oldPrice}',
                      style: TextStyle(
                          color: yellow,
                          fontSize: 12,
                        decoration: TextDecoration.lineThrough
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: size.height * 0.04,
            right: size.height * 0.001,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: appPadding / 4),
              child: Container(
                width: size.width * 0.2,
                height: size.height * 0.09,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.4),
                        offset: Offset(5,5),
                        blurRadius: 5
                      )
                  ]
                ),
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(popularProductModel.imageUrl),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
