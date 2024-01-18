import 'models/login_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/core/utils/validation_functions.dart';
import 'package:edurecovery/widgets/custom_elevated_button.dart';
import 'package:edurecovery/widgets/custom_icon_button.dart';
import 'package:edurecovery/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/login_provider.dart';
import 'package:edurecovery/presentation/fingerprint_login_dialog/fingerprint_login_dialog.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 23.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle2624,
                                      height: 38.v,
                                      width: 215.h,
                                      alignment: Alignment.center),
                                  SizedBox(height: 56.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("lbl_login".tr,
                                          style: theme.textTheme.titleLarge)),
                                  SizedBox(height: 6.v),
                                  Text("lbl_email".tr,
                                      style:
                                          CustomTextStyles.titleMediumMedium),
                                  SizedBox(height: 11.v),
                                  Selector<LoginProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.emailController,
                                      builder:
                                          (context, emailController, child) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText: "lbl_email2".tr,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            });
                                      }),
                                  SizedBox(height: 11.v),
                                  Text("lbl_password".tr,
                                      style:
                                          CustomTextStyles.titleMediumMedium),
                                  SizedBox(height: 10.v),
                                  Selector<LoginProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.passwordController,
                                      builder:
                                          (context, passwordController, child) {
                                        return CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "lbl_password2".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText: true);
                                      }),
                                  SizedBox(height: 28.v),
                                  _buildLoginRow(context),
                                  SizedBox(height: 20.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtDonthaveanaccount(context);
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_don_t_have_an_account2"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .labelLargeff000001),
                                                TextSpan(
                                                    text:
                                                        "lbl_register_here".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeff2a7fff)
                                              ]),
                                              textAlign: TextAlign.left))),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return Row(children: [
      Expanded(
          child: CustomElevatedButton(
              height: 55.v,
              text: "lbl_login".tr,
              buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              onPressed: () {
                onTapLogin(context);
              })),
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: CustomIconButton(
              height: 54.v,
              width: 55.h,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillBlueA,
              onTap: () {
                onTapBtnFingerprint(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgFingerprint)))
    ]);
  }

  /// Navigates to the loginDataIsNotCompleteScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginDataIsNotCompleteScreen,
    );
  }

  /// Displays a dialog with the [FingerprintLoginDialog] content.
  onTapBtnFingerprint(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: FingerprintLoginDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the registrasiScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registrasiScreen,
    );
  }
}
