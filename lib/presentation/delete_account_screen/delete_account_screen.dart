import 'models/delete_account_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/delete_account_provider.dart';class DeleteAccountScreen extends StatefulWidget {const DeleteAccountScreen({Key? key}) : super(key: key);

@override DeleteAccountScreenState createState() =>  DeleteAccountScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DeleteAccountProvider(), child: DeleteAccountScreen()); } 
 }
class DeleteAccountScreenState extends State<DeleteAccountScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v), child: Column(children: [Text("msg_verify_delete_account".tr, style: CustomTextStyles.titleLargeOnError), SizedBox(height: 15.v), CustomImageView(imagePath: ImageConstant.imgEllipse18, height: 96.adaptSize, width: 96.adaptSize, radius: BorderRadius.circular(48.h)), SizedBox(height: 11.v), Text("lbl_stevanus79".tr, style: CustomTextStyles.titleMediumOnError), SizedBox(height: 20.v), CustomElevatedButton(height: 55.v, text: "lbl_confirmation".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL101, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700, onPressed: () {onTapConfirmation(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h, top: 27.v, bottom: 28.v), onTap: () {onTapVector(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_verification".tr), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapVector(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the pinDeleteAccountScreen when the action is triggered.
onTapConfirmation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pinDeleteAccountScreen, ); } 
 }
