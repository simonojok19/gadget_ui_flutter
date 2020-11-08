import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/screens/home/widgets/star_rating.dart';

class ProductFeatures extends StatefulWidget {
  final BestSellingProductModel bestSellingProductModel;

  const ProductFeatures({Key key, this.bestSellingProductModel}) : super(key: key);
  @override
  _ProductFeaturesState createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: appPadding / 2),
        child: Container(
          decoration: BoxDecoration(
            color: brown,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          ),
          padding: EdgeInsets.all(appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Row(
                    children: [
                      StarRating(
                        rating: widget.bestSellingProductModel.rating,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        widget.bestSellingProductModel.rating.toString(),
                        style: TextStyle(
                          color: white,
                          fontSize: 17
                        ),
                      )
                    ],
                  )
                ],
              ),
              Text(
                widget.bestSellingProductModel.description,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w300
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildFeatureContainer(size, Icons.battery_charging_full_rounded, widget.bestSellingProductModel.battery.toString()),
                  buildFeatureContainer(size, Icons.watch_outlined, widget.bestSellingProductModel.input.toString()),
                  buildFeatureContainer(size, Icons.bluetooth_audio_rounded, widget.bestSellingProductModel.bluetooth.toString()),
                  buildFeatureContainer(size, Icons.volume_up_rounded, widget.bestSellingProductModel.sound.toString())
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: appPadding / 2),
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$', style: TextStyle(color: white, fontSize: 15),),
                          Text('${widget.bestSellingProductModel.price}', style: TextStyle(color: white, fontSize: 26, fontWeight: FontWeight.w600),),
                          Text(' + Add To Cart', style: TextStyle(color: yellow, fontSize: 16, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.shopping_basket_rounded, size: 40,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildFeatureContainer(Size size, IconData iconData, String battery) {
    return Container(
                  width: size.width * 0.2,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(iconData, color: yellow, size: 30,),
                      Text(
                        '${battery}h',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                );
  }
}
