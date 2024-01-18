import 'models/sub_about_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/sub_about_provider.dart';class SubAboutScreen extends StatefulWidget {const SubAboutScreen({Key? key}) : super(key: key);

@override SubAboutScreenState createState() =>  SubAboutScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SubAboutProvider(), child: SubAboutScreen()); } 
 }
class SubAboutScreenState extends State<SubAboutScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v), child: Column(children: [Padding(padding: EdgeInsets.only(left: 7.h), child: _buildTermsOfService(context, text: "msg_community_guidelines".tr)), SizedBox(height: 6.v), Divider(color: appTheme.blue50), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 7.h), child: _buildTermsOfService(context, text: "msg_terms_of_service".tr)), SizedBox(height: 8.v), Divider(color: appTheme.blue50), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 7.h), child: _buildTermsOfService(context, text: "lbl_privacy_policy".tr)), SizedBox(height: 6.v), Divider(color: appTheme.blue50), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 46.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.only(left: 12.h, top: 18.v, bottom: 18.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_about_edurecover".tr), styleType: Style.bgFill); } 
/// Common widget
Widget _buildTermsOfService(BuildContext context, {required String text, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(text, style: CustomTextStyles.titleMediumMedium.copyWith(color: theme.colorScheme.primary.withOpacity(1))), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 17.adaptSize, width: 17.adaptSize, margin: EdgeInsets.only(top: 4.v, bottom: 2.v))]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
