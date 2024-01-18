import 'models/flags_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:flutter/material.dart';import 'provider/flags_provider.dart';class FlagsScreen extends StatefulWidget {const FlagsScreen({Key? key}) : super(key: key);

@override FlagsScreenState createState() =>  FlagsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FlagsProvider(), child: FlagsScreen()); } 
 }
class FlagsScreenState extends State<FlagsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: 229.h, padding: EdgeInsets.symmetric(horizontal: 54.h, vertical: 36.v), child: Column(children: [Padding(padding: EdgeInsets.only(right: 1.h), child: _buildMegaphoneRow(context, megaphoneImage: ImageConstant.imgContrast, televisionImage: ImageConstant.imgFlagsEnUs, closeImage: ImageConstant.imgFlagsItIt)), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(right: 1.h), child: _buildMegaphoneRow(context, megaphoneImage: ImageConstant.imgMegaphoneBlueGray10002, televisionImage: ImageConstant.imgTelevisionBlueGray200, closeImage: ImageConstant.imgCloseBlueGray200)), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(right: 1.h), child: _buildMegaphoneRow(context, megaphoneImage: ImageConstant.imgMegaphoneBlueGray1000212x16, televisionImage: ImageConstant.imgCloseBlueGray20012x16, closeImage: ImageConstant.imgSettingsBlueGray200, onTapTelevisionImage: () {onTapTelevisionImage(context);})), SizedBox(height: 5.v)])))); } 
/// Common widget
Widget _buildMegaphoneRow(BuildContext context, {required String megaphoneImage, required String televisionImage, required String closeImage, Function? onTapTelevisionImage, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomImageView(imagePath: megaphoneImage, height: 12.v, width: 16.h, margin: EdgeInsets.only(top: 4.v, right: 18.h))), Expanded(child: CustomImageView(imagePath: televisionImage, height: 12.v, width: 16.h, margin: EdgeInsets.only(left: 18.h, top: 2.v, right: 18.h), onTap: () {onTapTelevisionImage!.call();})), Expanded(child: CustomImageView(imagePath: closeImage, height: 12.v, width: 16.h, margin: EdgeInsets.only(left: 18.h, bottom: 4.v)))]); } 

/// Navigates to the previous screen.
onTapTelevisionImage(BuildContext context) { NavigatorService.goBack(); } 
 }
