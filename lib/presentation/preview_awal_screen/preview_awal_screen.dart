import 'models/preview_awal_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:flutter/material.dart';import 'provider/preview_awal_provider.dart';class PreviewAwalScreen extends StatefulWidget {const PreviewAwalScreen({Key? key}) : super(key: key);

@override PreviewAwalScreenState createState() =>  PreviewAwalScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PreviewAwalProvider(), child: PreviewAwalScreen()); } 
 }
class PreviewAwalScreenState extends State<PreviewAwalScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.loginScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h), child: CustomImageView(imagePath: ImageConstant.imgRectangle2624, height: 52.v, width: 296.h, alignment: Alignment.center)))); } 
 }
