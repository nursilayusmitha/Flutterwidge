import 'package:flartravel/core/app_export.dart';
import 'package:flartravel/widgets/custom_elevated_button.dart';
import 'package:flartravel/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveScreen extends StatelessWidget {
  Iphone1415ProMaxFiveScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                key: _formKey,
                child: SizedBox(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBg,
                          height: 941.v,
                          width: 430.h,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SingleChildScrollView(
                              child: Container(
                                  height: 475.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(bottom: 190.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 29.h),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        _buildLoginForm(context),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .outlineOnError,
                                                child: Text("Login\n",
                                                    style: CustomTextStyles
                                                        .displayMediumPoppins))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 68.v),
                                                child: Text(
                                                    "Sign in to continue.",
                                                    style: theme.textTheme
                                                        .titleSmall))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 86.v),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 1.v),
                                                          child: Text(
                                                              "Don’t have an account?",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtSignUpHere(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h),
                                                              child: Text(
                                                                  "Sign up here.",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleSmall)))
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("USERNAME / EMAIL :",
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                      controller: userNameController, hintText: "Type Your Username/Email"),
                  SizedBox(height: 14.v),
                  Text("PASSWORD :", style: theme.textTheme.titleMedium),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                      controller: passwordController,
                      hintText: "Type Your Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 22.v)),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "Sign in",
                      onPressed: () {
                        onTapSignIn(context);
                      })
                ])));
  }

  /// Navigates to the iphone1415ProMaxSixScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxSixScreen);
  }

  /// Navigates to the iphone1415ProMaxFourScreen when the action is triggered.
  onTapTxtSignUpHere(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFourScreen);
  }
}
