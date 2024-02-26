import 'package:flartravel/core/app_export.dart';
import 'package:flartravel/widgets/custom_elevated_button.dart';
import 'package:flartravel/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourScreen extends StatelessWidget {
  Iphone1415ProMaxFourScreen({Key? key}) : super(key: key);

  TextEditingController accountDetailsController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
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
                                  height: 644.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(bottom: 57.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 29.h),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                width: 191.h,
                                                decoration: AppDecoration
                                                    .outlineOnError,
                                                child: Text("\nAccount",
                                                    maxLines:
                                                        2, // Sesuaikan dengan jumlah baris yang diinginkan
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .displayMediumPoppins))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(top: 14.v),
                                                decoration: AppDecoration
                                                    .outlineOnError,
                                                child: Text("Create new\n",
                                                    style: CustomTextStyles
                                                        .displayMediumPoppins))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 124.v),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                          "Already Registered?",
                                                          style: theme.textTheme
                                                              .titleSmall),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtLogInHere(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          3.h),
                                                              child: Text(
                                                                  "Log in here.",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleSmall)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 1.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("USERNAME :",
                                                          style: theme.textTheme
                                                              .titleMedium),
                                                      SizedBox(height: 10.v),
                                                      _buildAccountDetails(
                                                          context),
                                                      SizedBox(height: 14.v),
                                                      Text("EMAIL :",
                                                          style: theme.textTheme
                                                              .titleMedium),
                                                      SizedBox(height: 10.v),
                                                      _buildEmailInput(context),
                                                      SizedBox(height: 14.v),
                                                      Text("PASSWORD :",
                                                          style: theme.textTheme
                                                              .titleMedium),
                                                      SizedBox(height: 10.v),
                                                      _buildPasswordInput(
                                                          context),
                                                      SizedBox(height: 65.v),
                                                      _buildSignUpButton(
                                                          context)
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildAccountDetails(BuildContext context) {
    return CustomTextFormField(
        controller: accountDetailsController, hintText: "Type Your Username");
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return CustomTextFormField(
        controller: emailInputController,
        hintText: "Type Your Email",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v));
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
        controller: passwordInputController,
        hintText: "Type Your Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign up",
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapTxtLogInHere(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }

  /// Navigates to the iphone1415ProMaxSixScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxSixScreen);
  }
}
