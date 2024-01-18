import 'models/field_pin_delete_account_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/field_pin_delete_account_provider.dart';class FieldPinDeleteAccountScreen extends StatefulWidget {const FieldPinDeleteAccountScreen({Key? key}) : super(key: key);

@override FieldPinDeleteAccountScreenState createState() =>  FieldPinDeleteAccountScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FieldPinDeleteAccountProvider(), child: FieldPinDeleteAccountScreen()); } 
 }
class FieldPinDeleteAccountScreenState extends State<FieldPinDeleteAccountScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_verify_your_pin".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Selector<FieldPinDeleteAccountProvider, TextEditingController?>(selector: (context, provider) => provider.pincodeController, builder: (context, pincodeController, child) {return CustomTextFormField(controller: pincodeController, hintText: "lbl_4_2_5_2".tr, hintStyle: CustomTextStyles.headlineLargeSecondaryContainer, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 6.v));})), SizedBox(height: 14.v), CustomElevatedButton(height: 55.v, text: "lbl_confirmation".tr, margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL101, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700, onPressed: () {onTapConfirmation(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h, top: 27.v, bottom: 28.v), onTap: () {onTapVector(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_deleted_account".tr), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapVector(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the succesDeleteAccountScreen when the action is triggered.
onTapConfirmation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.succesDeleteAccountScreen, ); } 
 }
