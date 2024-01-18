import '../detail_modul_1_ipa_smp_screen/widgets/viewhierarchy_item_widget.dart';import 'models/detail_modul_1_ipa_smp_model.dart';import 'models/viewhierarchy_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'provider/detail_modul_1_ipa_smp_provider.dart';class DetailModul1IpaSmpScreen extends StatefulWidget {const DetailModul1IpaSmpScreen({Key? key}) : super(key: key);

@override DetailModul1IpaSmpScreenState createState() =>  DetailModul1IpaSmpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DetailModul1IpaSmpProvider(), child: DetailModul1IpaSmpScreen()); } 
 }
class DetailModul1IpaSmpScreenState extends State<DetailModul1IpaSmpScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle34176x314, height: 176.v, width: 314.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 10.v), Text("msg_sains_dalam_konteks".tr, style: theme.textTheme.titleMedium), Container(width: 303.h, margin: EdgeInsets.only(right: 12.h), child: Text("msg_selesaikan_video".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray500_1)), SizedBox(height: 10.v), _buildViewHierarchy(context), SizedBox(height: 12.v), Divider(), SizedBox(height: 13.v), _buildKuisSains(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_1_sains_dalam_konteks".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildViewHierarchy(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 10.h), child: Consumer<DetailModul1IpaSmpProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 9.5.v), child: SizedBox(width: 314.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray100)));}, itemCount: provider.detailModul1IpaSmpModelObj.viewhierarchyItemList.length, itemBuilder: (context, index) {ViewhierarchyItemModel model = provider.detailModul1IpaSmpModelObj.viewhierarchyItemList[index]; return ViewhierarchyItemWidget(model, onTapImgMegaphoneImage: () {onTapImgMegaphoneImage(context);}, changeRadioButton1: (value) {provider.changeRadioButton1(index, value);});});})); } 
/// Section Widget
Widget _buildKuisSains(BuildContext context) { return Consumer<DetailModul1IpaSmpProvider>(builder: (context, provider, child) {return CustomRadioButton(width: 315.h, text: "msg_6_kuis_sains".tr, value: "msg_6_kuis_sains".tr, groupValue: provider.radioGroup, isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);});}); } 
/// Navigates to the resumeModul1IpaSmpScreen when the action is triggered.
onTapImgMegaphoneImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.resumeModul1IpaSmpScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
