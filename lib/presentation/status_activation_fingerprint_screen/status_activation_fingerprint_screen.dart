import 'models/status_activation_fingerprint_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/status_activation_fingerprint_provider.dart';class StatusActivationFingerprintScreen extends StatefulWidget {const StatusActivationFingerprintScreen({Key? key}) : super(key: key);

@override StatusActivationFingerprintScreenState createState() =>  StatusActivationFingerprintScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => StatusActivationFingerprintProvider(), child: StatusActivationFingerprintScreen()); } 
 }
class StatusActivationFingerprintScreenState extends State<StatusActivationFingerprintScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(15.h), child: Column(children: [Padding(padding: EdgeInsets.only(left: 4.h), child: _buildDeleteAccountRow(context, text: "lbl_change_password".tr)), SizedBox(height: 5.v), Divider(color: appTheme.blue50), SizedBox(height: 14.v), _buildFingerprintRow(context), SizedBox(height: 7.v), Divider(color: appTheme.blue50), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 4.h), child: _buildDeleteAccountRow(context, text: "lbl_delete_account".tr)), SizedBox(height: 9.v), Divider(color: appTheme.blue50), SizedBox(height: 5.v), Divider(color: appTheme.blue50)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 46.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 12.h, top: 18.v, bottom: 18.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_account".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildFingerprintRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_fingerprint".tr, style: CustomTextStyles.titleMediumMedium), Spacer(), Padding(padding: EdgeInsets.only(bottom: 5.v), child: Text("lbl_aktif".tr, style: CustomTextStyles.bodySmallGray50012)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 17.adaptSize, width: 17.adaptSize, margin: EdgeInsets.only(left: 4.h, bottom: 5.v))])); } 
/// Common widget
Widget _buildDeleteAccountRow(BuildContext context, {required String text, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(text, style: CustomTextStyles.titleMediumRedA700.copyWith(color: appTheme.redA700)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 17.adaptSize, width: 17.adaptSize, margin: EdgeInsets.symmetric(vertical: 3.v))]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
