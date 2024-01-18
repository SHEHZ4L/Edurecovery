import '../done_detail_modul_ipa_smp_screen/widgets/viewhierarchy1_item_widget.dart';import 'models/done_detail_modul_ipa_smp_model.dart';import 'models/viewhierarchy1_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/done_detail_modul_ipa_smp_provider.dart';class DoneDetailModulIpaSmpScreen extends StatefulWidget {const DoneDetailModulIpaSmpScreen({Key? key}) : super(key: key);

@override DoneDetailModulIpaSmpScreenState createState() =>  DoneDetailModulIpaSmpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DoneDetailModulIpaSmpProvider(), child: DoneDetailModulIpaSmpScreen()); } 
 }
class DoneDetailModulIpaSmpScreenState extends State<DoneDetailModulIpaSmpScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle34176x314, height: 176.v, width: 314.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 10.v), Text("msg_sains_dalam_konteks".tr, style: theme.textTheme.titleMedium), Container(width: 303.h, margin: EdgeInsets.only(right: 12.h), child: Text("msg_selesaikan_video".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray500_1)), SizedBox(height: 10.v), _buildViewHierarchy(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_1_sains_dalam_konteks".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildViewHierarchy(BuildContext context) { return Consumer<DoneDetailModulIpaSmpProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.5.v), child: SizedBox(width: 314.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray100)));}, itemCount: provider.doneDetailModulIpaSmpModelObj.viewhierarchy1ItemList.length, itemBuilder: (context, index) {Viewhierarchy1ItemModel model = provider.doneDetailModulIpaSmpModelObj.viewhierarchy1ItemList[index]; return Viewhierarchy1ItemWidget(model, onTapImgImage1: () {onTapImgImage1(context);});});}); } 
/// Navigates to the resumeModul1IpaSmpScreen when the action is triggered.
onTapImgImage1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.resumeModul1IpaSmpScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
