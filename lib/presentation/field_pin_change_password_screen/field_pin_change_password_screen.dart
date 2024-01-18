import 'models/field_pin_change_password_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'provider/field_pin_change_password_provider.dart';class FieldPinChangePasswordScreen extends StatefulWidget {const FieldPinChangePasswordScreen({Key? key}) : super(key: key);

@override FieldPinChangePasswordScreenState createState() =>  FieldPinChangePasswordScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FieldPinChangePasswordProvider(), child: FieldPinChangePasswordScreen()); } 
 }
class FieldPinChangePasswordScreenState extends State<FieldPinChangePasswordScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_verify_your_pin".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 9.v), CustomOutlinedButton(text: "lbl_4_2_5_2".tr, margin: EdgeInsets.only(left: 2.h)), SizedBox(height: 14.v), CustomElevatedButton(height: 55.v, text: "lbl_confirmation".tr, margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL101, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700, onPressed: () {onTapConfirmation(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 46.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 12.h, top: 18.v, bottom: 18.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_change_password".tr), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the succesChangePasswordScreen when the action is triggered.
onTapConfirmation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.succesChangePasswordScreen, ); } 
 }
