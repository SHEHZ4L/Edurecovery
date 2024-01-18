import 'models/save_change_photo_profile_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/appbar_trailing_image.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/save_change_photo_profile_provider.dart';class SaveChangePhotoProfileScreen extends StatefulWidget {const SaveChangePhotoProfileScreen({Key? key}) : super(key: key);

@override SaveChangePhotoProfileScreenState createState() =>  SaveChangePhotoProfileScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SaveChangePhotoProfileProvider(), child: SaveChangePhotoProfileScreen()); } 
 }
class SaveChangePhotoProfileScreenState extends State<SaveChangePhotoProfileScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 8.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(height: 29.v, width: 118.h, text: "lbl_photo".tr, buttonStyle: CustomButtonStyles.fillBlue, buttonTextStyle: CustomTextStyles.labelLargePrimary), SizedBox(height: 8.v), _buildPhotoView(context), _buildPhotoView1(context), _buildPhotoView2(context), _buildPhotoView3(context), SizedBox(height: 3.v), _buildPhotoView4(context)])), bottomNavigationBar: _buildAlbumRow(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCloseBlueGray900, margin: EdgeInsets.only(left: 18.h, top: 23.v, bottom: 23.v), onTap: () {onTapClose(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_galeri".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(top: 23.v, right: 22.h)), AppbarSubtitle(text: "lbl_save".tr, margin: EdgeInsets.only(left: 74.h, top: 23.v, right: 42.h), onTap: () {onTapSave(context);})], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildPhotoView(BuildContext context) { return SizedBox(width: double.maxFinite, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 107.v, width: 122.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle40, height: 107.v, width: 122.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 5.h), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 118.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle41, height: 107.v, width: 118.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 6.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))]), Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 107.v, width: 122.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle43, height: 107.v, width: 122.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 5.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 118.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle44, height: 107.v, width: 118.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 6.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))])]), Column(children: [SizedBox(height: 107.v, width: 120.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle42, height: 107.v, width: 120.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 120.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle42, height: 107.v, width: 120.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))])])); } 
/// Section Widget
Widget _buildPhotoView1(BuildContext context) { return SizedBox(width: double.maxFinite, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 107.v, width: 122.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle41, height: 107.v, width: 122.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 5.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 118.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle40, height: 107.v, width: 118.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 6.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 120.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle48, height: 107.v, width: 120.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))])); } 
/// Section Widget
Widget _buildPhotoView2(BuildContext context) { return SizedBox(width: double.maxFinite, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 107.v, width: 122.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle44, height: 107.v, width: 122.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 5.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 118.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle40, height: 107.v, width: 118.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 6.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 120.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle42, height: 107.v, width: 120.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))])); } 
/// Section Widget
Widget _buildPhotoView3(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 107.v, width: 122.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle41, height: 107.v, width: 122.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 5.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 118.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle43, height: 107.v, width: 118.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 6.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), Spacer(), Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, bottom: 85.v), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h)))])); } 
/// Section Widget
Widget _buildPhotoView4(BuildContext context) { return SizedBox(width: double.maxFinite, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 107.v, width: 122.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle41, height: 107.v, width: 122.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 5.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 118.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle48, height: 107.v, width: 118.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 6.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))])), SizedBox(height: 107.v, width: 120.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle44, height: 107.v, width: 120.h, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, right: 8.h), decoration: BoxDecoration(color: appTheme.blueGray100.withOpacity(0.13), borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))])); } 
/// Section Widget
Widget _buildAlbumRow(BuildContext context) { return Container(margin: EdgeInsets.only(left: 123.h, right: 117.h, bottom: 13.v), decoration: AppDecoration.fillBlue.copyWith(borderRadius: BorderRadiusStyle.circleBorder14), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Text("lbl_album".tr, style: CustomTextStyles.labelLargePrimary), Padding(padding: EdgeInsets.only(left: 28.h), child: Text("lbl_kamera".tr, style: CustomTextStyles.labelLargePrimary))])); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapClose(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapSave(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
 }
