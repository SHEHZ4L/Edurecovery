import 'models/kuis_modul_1_ipa_smp_one_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/kuis_modul_1_ipa_smp_one_provider.dart';class KuisModul1IpaSmpOneScreen extends StatefulWidget {const KuisModul1IpaSmpOneScreen({Key? key}) : super(key: key);

@override KuisModul1IpaSmpOneScreenState createState() =>  KuisModul1IpaSmpOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KuisModul1IpaSmpOneProvider(), child: KuisModul1IpaSmpOneScreen()); } 
 }
class KuisModul1IpaSmpOneScreenState extends State<KuisModul1IpaSmpOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 259.h, margin: EdgeInsets.only(right: 56.h), child: Text("msg_soal_pilihan_ganda2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleMedium)), SizedBox(height: 5.v), SizedBox(width: 314.h, child: Text("msg_kuis_modul_sains".tr, maxLines: 17, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: theme.textTheme.bodyMedium)), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSebelumnyaRow(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "msg_kuis_sains_dalam".tr, margin: EdgeInsets.only(left: 20.h))); } 
/// Section Widget
Widget _buildSebelumnyaRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 31.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 121.h, text: "lbl_sebelumnya".tr, buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.bodyMediumGray500), CustomElevatedButton(width: 121.h, text: "lbl_selanjutnya".tr, onPressed: () {onTapSelanjutnya(context);})])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the kuisModul1IpaSmpTwoScreen when the action is triggered.
onTapSelanjutnya(BuildContext context) { NavigatorService.pushNamed(AppRoutes.kuisModul1IpaSmpTwoScreen, ); } 
 }
