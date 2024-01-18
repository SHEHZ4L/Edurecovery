import 'models/detail_buku_digital_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/detail_buku_digital_provider.dart';class DetailBukuDigitalScreen extends StatefulWidget {const DetailBukuDigitalScreen({Key? key}) : super(key: key);

@override DetailBukuDigitalScreenState createState() =>  DetailBukuDigitalScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DetailBukuDigitalProvider(), child: DetailBukuDigitalScreen()); } 
 }
class DetailBukuDigitalScreenState extends State<DetailBukuDigitalScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 49.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle807, height: 217.v, width: 156.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 18.v), Text("msg_ilmu_pengetahuan3".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 12.v), Padding(padding: EdgeInsets.symmetric(horizontal: 42.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 18.v, width: 100.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Text("lbl_kelas_4".tr, style: CustomTextStyles.bodySmall11)), Align(alignment: Alignment.center, child: Container(height: 18.v, width: 100.h, decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(9.h))))])), Container(height: 18.v, width: 100.h, margin: EdgeInsets.only(left: 6.h), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Text("lbl_kurikulum_2013".tr, style: CustomTextStyles.bodySmall11)), Align(alignment: Alignment.center, child: Container(height: 18.v, width: 100.h, decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(9.h))))]))])), SizedBox(height: 22.v), CustomElevatedButton(height: 52.v, text: "lbl_read_e_book".tr, buttonStyle: CustomButtonStyles.fillBlueATL15, buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700, onPressed: () {onTapReadEBook(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_ilmu_pengetahuan3".tr, onTap: () {onTapPembelajaran(context);}), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the bukuDigitalScreen when the action is triggered.
onTapPembelajaran(BuildContext context) { NavigatorService.pushNamed(AppRoutes.bukuDigitalScreen, ); } 
/// Navigates to the isiBukuDigitalScreen when the action is triggered.
onTapReadEBook(BuildContext context) { NavigatorService.pushNamed(AppRoutes.isiBukuDigitalScreen, ); } 
 }
