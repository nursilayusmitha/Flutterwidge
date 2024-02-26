import 'package:flartravel/core/app_export.dart';
import 'package:flartravel/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxThreeScreen extends StatelessWidget {
  const Iphone1415ProMaxThreeScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup27),
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
                          SizedBox(
                              width: 400.h,
                              child: Text("Make your \nholiday \nmemorable",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displayMedium)),
                          SizedBox(height: 1.v),
                          SizedBox(
                              width: 350.h,
                              child: Text(
                                  "Let's make your holiday \nmemorable with us",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleMediumNotoSans)),
                          SizedBox(height: 28.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgGrid,
                              height: 14.v,
                              width: 77.h,
                              margin: EdgeInsets.only(left: 4.h, bottom : 95.h))
                        ]))),
            bottomNavigationBar: _buildGetStartedButton(context)));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Get Started",
        margin: EdgeInsets.only(left: 43.h, right: 44.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.outlineOnError,
        buttonTextStyle: CustomTextStyles.headlineSmallPrimary,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Navigates to the iphone1415ProMaxFourScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFourScreen);
  }
}
