import 'package:flartravel/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxSixScreen extends StatelessWidget {
  const Iphone1415ProMaxSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 18.v,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCarbonLocationFilled,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.only(bottom: 864.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 868.v,
                ),
                child: Text(
                  "Pasuruan, Indonesia",
                  style: CustomTextStyles.titleSmallOnError,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRiArrowDropDownLine,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 6.v,
                  bottom: 864.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
