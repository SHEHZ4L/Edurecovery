import '../tingkatan_pembelajaran_darurat_screen/widgets/tingkatanpembelajarandarurat_item_widget.dart';import 'models/tingkatan_pembelajaran_darurat_model.dart';import 'models/tingkatanpembelajarandarurat_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/tingkatan_pembelajaran_darurat_provider.dart';class TingkatanPembelajaranDaruratScreen extends StatefulWidget {const TingkatanPembelajaranDaruratScreen({Key? key}) : super(key: key);

@override TingkatanPembelajaranDaruratScreenState createState() =>  TingkatanPembelajaranDaruratScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => TingkatanPembelajaranDaruratProvider(), child: TingkatanPembelajaranDaruratScreen()); } 
 }
class TingkatanPembelajaranDaruratScreenState extends State<TingkatanPembelajaranDaruratScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_tingkatan_pendidikan".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 12.v), _buildTingkatanPembelajaranDarurat(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_pembelajaran".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildTingkatanPembelajaranDarurat(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: Consumer<TingkatanPembelajaranDaruratProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 13.v);}, itemCount: provider.tingkatanPembelajaranDaruratModelObj.tingkatanpembelajarandaruratItemList.length, itemBuilder: (context, index) {TingkatanpembelajarandaruratItemModel model = provider.tingkatanPembelajaranDaruratModelObj.tingkatanpembelajarandaruratItemList[index]; return TingkatanpembelajarandaruratItemWidget(model, onTapTxtSd: () {onTapTxtSd(context);}, onTapImgSd1: () {onTapImgSd1(context);});});})); } 
/// Navigates to the mataPelajaranSdScreen when the action is triggered.
onTapTxtSd(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mataPelajaranSdScreen); } 
/// Navigates to the mataPelajaranSdScreen when the action is triggered.
onTapImgSd1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mataPelajaranSdScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
