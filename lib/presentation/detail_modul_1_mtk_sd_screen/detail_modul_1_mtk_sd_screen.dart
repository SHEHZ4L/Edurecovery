import '../detail_modul_1_mtk_sd_screen/widgets/stacklist_item_widget.dart';import 'models/detail_modul_1_mtk_sd_model.dart';import 'models/stacklist_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'provider/detail_modul_1_mtk_sd_provider.dart';class DetailModul1MtkSdScreen extends StatefulWidget {const DetailModul1MtkSdScreen({Key? key}) : super(key: key);

@override DetailModul1MtkSdScreenState createState() =>  DetailModul1MtkSdScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DetailModul1MtkSdProvider(), child: DetailModul1MtkSdScreen()); } 
 }
class DetailModul1MtkSdScreenState extends State<DetailModul1MtkSdScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle34, height: 176.v, width: 314.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 12.v), Text("msg_konsep_dasar_matematika".tr, style: theme.textTheme.titleMedium), Container(width: 303.h, margin: EdgeInsets.only(right: 12.h), child: Text("msg_selesaikan_video".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray500_1)), SizedBox(height: 11.v), _buildPenjumlahanStack(context), SizedBox(height: 9.v), Divider(), SizedBox(height: 12.v), _buildStackList(context), SizedBox(height: 10.v), Divider(), SizedBox(height: 13.v), _buildKuisKonsep(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "msg_1_konsep_dasar2".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildPenjumlahanStack(BuildContext context) { return SizedBox(height: 21.v, width: 305.h, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 30.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_1_penjumlahan".tr, style: theme.textTheme.bodyMedium), CustomImageView(imagePath: ImageConstant.imgMegaphone, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.only(left: 132.h, top: 2.v, bottom: 3.v), onTap: () {onTapImgMegaphone(context);}), CustomImageView(imagePath: ImageConstant.imgDownload, height: 12.v, width: 15.h, margin: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 4.v))])), SizedBox(height: 9.v), Divider()])), Align(alignment: Alignment.topRight, child: Container(height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(top: 4.v), decoration: BoxDecoration(color: appTheme.greenA700, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: appTheme.gray400, width: 1.h))))])); } 
/// Section Widget
Widget _buildStackList(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 10.h), child: Consumer<DetailModul1MtkSdProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 12.0.v), child: SizedBox(width: 314.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray100)));}, itemCount: provider.detailModul1MtkSdModelObj.stacklistItemList.length, itemBuilder: (context, index) {StacklistItemModel model = provider.detailModul1MtkSdModelObj.stacklistItemList[index]; return StacklistItemWidget(model, changeRadioButton1: (value) {provider.changeRadioButton1(index, value);});});})); } 
/// Section Widget
Widget _buildKuisKonsep(BuildContext context) { return Consumer<DetailModul1MtkSdProvider>(builder: (context, provider, child) {return CustomRadioButton(width: 315.h, text: "msg_6_kuis_konsep".tr, value: "msg_6_kuis_konsep".tr, groupValue: provider.radioGroup, isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);});}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the resumeModul1MtkSdScreen when the action is triggered.
onTapImgMegaphone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.resumeModul1MtkSdScreen, ); } 
 }