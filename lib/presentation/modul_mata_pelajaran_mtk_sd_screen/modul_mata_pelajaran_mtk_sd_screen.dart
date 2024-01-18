import '../modul_mata_pelajaran_mtk_sd_screen/widgets/modulmatematika_item_widget.dart';import 'models/modul_mata_pelajaran_mtk_sd_model.dart';import 'models/modulmatematika_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/modul_mata_pelajaran_mtk_sd_provider.dart';class ModulMataPelajaranMtkSdScreen extends StatefulWidget {const ModulMataPelajaranMtkSdScreen({Key? key}) : super(key: key);

@override ModulMataPelajaranMtkSdScreenState createState() =>  ModulMataPelajaranMtkSdScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ModulMataPelajaranMtkSdProvider(), child: ModulMataPelajaranMtkSdScreen()); } 
 }
class ModulMataPelajaranMtkSdScreenState extends State<ModulMataPelajaranMtkSdScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_modul_matematika".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 9.v), _buildModulMatematika(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_sd_matematika".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildModulMatematika(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 2.h), child: Consumer<ModulMataPelajaranMtkSdProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 9.v);}, itemCount: provider.modulMataPelajaranMtkSdModelObj.modulmatematikaItemList.length, itemBuilder: (context, index) {ModulmatematikaItemModel model = provider.modulMataPelajaranMtkSdModelObj.modulmatematikaItemList[index]; return ModulmatematikaItemWidget(model, onTapEighty: () {onTapEighty(context);});});}))); } 
/// Navigates to the detailModul1MtkSdScreen when the action is triggered.
onTapEighty(BuildContext context) { NavigatorService.pushNamed(AppRoutes.detailModul1MtkSdScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
