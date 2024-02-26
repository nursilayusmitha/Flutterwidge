import 'package:flartravel/core/app_export.dart';
import 'package:flartravel/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  const Iphone1415ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup16),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 39.h, vertical: 49.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Container(
                              width: 350.h,
                              margin: EdgeInsets.only(right: 20.h),
                              child: Text("Your travel\nhas just begun",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displayMedium)),
                          SizedBox(height: 1.v),
                          Container(
                              width: 400.h,
                              margin: EdgeInsets.only(right: 67.h),
                              child: Text(
                                  "Let’s travel around the world\nand visit many beautiful places",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleMediumNotoSans)),
                          SizedBox(height: 28.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgNotification,
                              height: 14.v,
                              width: 77.h,
                              margin: EdgeInsets.only(left: 4.h, bottom :95.h))
                        ]))),
            bottomNavigationBar: _buildUserProfile(context)));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 43.h, bottom: 40.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapTxtSkip(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 21.v, bottom: 10.v),
                  child: Text("Skip", style: theme.textTheme.headlineMedium))),
          CustomIconButton(
              height: 68.adaptSize,
              width: 68.adaptSize,
              padding: EdgeInsets.all(21.h),
              onTap: () {
                onTapBtnArrowRight(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight))
        ]));
  }

  /// Navigates to the iphone1415ProMaxThreeScreen when the action is triggered.
  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxThreeScreen);
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }
}
