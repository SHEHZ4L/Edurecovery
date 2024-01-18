import 'models/isi_buku_digital_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/isi_buku_digital_provider.dart';class IsiBukuDigitalScreen extends StatefulWidget {const IsiBukuDigitalScreen({Key? key}) : super(key: key);

@override IsiBukuDigitalScreenState createState() =>  IsiBukuDigitalScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => IsiBukuDigitalProvider(), child: IsiBukuDigitalScreen()); } 
 }
class IsiBukuDigitalScreenState extends State<IsiBukuDigitalScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 1.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle807, height: 465.v, width: 360.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 2.v), CustomImageView(imagePath: ImageConstant.imgRectangle808465x360, height: 465.v, width: 360.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgRectangle809465x360, height: 465.v, width: 360.h, radius: BorderRadius.circular(5.h))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_ilmu_pengetahuan3".tr, onTap: () {onTapPembelajaran(context);}), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the bukuDigitalScreen when the action is triggered.
onTapPembelajaran(BuildContext context) { NavigatorService.pushNamed(AppRoutes.bukuDigitalScreen, ); } 
 }
