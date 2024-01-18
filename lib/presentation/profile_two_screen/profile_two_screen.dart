import 'models/profile_two_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/home_page/home_page.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/appbar_trailing_image.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_bottom_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/profile_two_provider.dart';class ProfileTwoScreen extends StatefulWidget {const ProfileTwoScreen({Key? key}) : super(key: key);

@override ProfileTwoScreenState createState() =>  ProfileTwoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ProfileTwoProvider(), child: ProfileTwoScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ProfileTwoScreenState extends State<ProfileTwoScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 1.v), child: Column(children: [_buildEditProfile(context), Align(alignment: Alignment.centerRight, child: SizedBox(width: 165.h, child: Divider(color: theme.colorScheme.primary.withOpacity(1), endIndent: 40.h))), SizedBox(height: 15.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 26.h), child: Text("msg_riwayat_pelatihan".tr, style: CustomTextStyles.titleSmallSecondaryContainer))), SizedBox(height: 13.v), Divider(), SizedBox(height: 14.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 26.h), child: Text("lbl_entrepreneur".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 12.v), Divider(), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 26.h), child: Text("lbl_kepemimpinan".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 9.v), Divider(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_profile".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.img44Setting, margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildEditProfile(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 8.v), decoration: AppDecoration.outlinePrimary, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 9.v), CustomImageView(imagePath: ImageConstant.imgEllipse17, height: 156.adaptSize, width: 156.adaptSize, radius: BorderRadius.circular(78.h)), SizedBox(height: 8.v), Text("lbl_stevanus79".tr, style: CustomTextStyles.titleSmallSecondaryContainerMedium), SizedBox(height: 18.v), CustomElevatedButton(height: 50.v, text: "lbl_edit_profile".tr, buttonStyle: CustomButtonStyles.outlinePrimary, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700), SizedBox(height: 27.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 9.h, right: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [GestureDetector(onTap: () {onTapTxtPembelajaran(context);}, child: Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_pembelajaran".tr, style: CustomTextStyles.titleSmallSecondaryContainerMedium))), Text("lbl_pelatihan".tr, style: CustomTextStyles.titleSmallSecondaryContainerMedium)])))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.home2bluea70002: return AppRoutes.homePage; case BottomBarEnum.User: return "/"; case BottomBarEnum.keepminusprimarycontainer: return "/"; case BottomBarEnum.Lock: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the profileOneScreen when the action is triggered.
onTapTxtPembelajaran(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileOneScreen, ); } 
 }
