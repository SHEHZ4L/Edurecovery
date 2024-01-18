import '../modul_mata_pelajaran_ipa_smp_screen/widgets/modulilmupengetahuanalamsmp_item_widget.dart';import 'models/modul_mata_pelajaran_ipa_smp_model.dart';import 'models/modulilmupengetahuanalamsmp_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/modul_mata_pelajaran_ipa_smp_provider.dart';class ModulMataPelajaranIpaSmpScreen extends StatefulWidget {const ModulMataPelajaranIpaSmpScreen({Key? key}) : super(key: key);

@override ModulMataPelajaranIpaSmpScreenState createState() =>  ModulMataPelajaranIpaSmpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ModulMataPelajaranIpaSmpProvider(), child: ModulMataPelajaranIpaSmpScreen()); } 
 }
class ModulMataPelajaranIpaSmpScreenState extends State<ModulMataPelajaranIpaSmpScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_modul_ilmu_pengetahuan".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 6.v), _buildModulIlmuPengetahuanAlamSMP(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_smp_ilmu_pengetahuan".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildModulIlmuPengetahuanAlamSMP(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 2.h), child: Consumer<ModulMataPelajaranIpaSmpProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 9.v);}, itemCount: provider.modulMataPelajaranIpaSmpModelObj.modulilmupengetahuanalamsmpItemList.length, itemBuilder: (context, index) {ModulilmupengetahuanalamsmpItemModel model = provider.modulMataPelajaranIpaSmpModelObj.modulilmupengetahuanalamsmpItemList[index]; return ModulilmupengetahuanalamsmpItemWidget(model, onTapTitle: () {onTapTitle(context);});});}))); } 
/// Navigates to the detailModul1IpaSmpScreen when the action is triggered.
onTapTitle(BuildContext context) { NavigatorService.pushNamed(AppRoutes.detailModul1IpaSmpScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
