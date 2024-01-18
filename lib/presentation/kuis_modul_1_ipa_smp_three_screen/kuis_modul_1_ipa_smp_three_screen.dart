import '../kuis_modul_1_ipa_smp_three_screen/widgets/view_item_widget.dart';import 'models/kuis_modul_1_ipa_smp_three_model.dart';import 'models/view_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_pin_code_text_field.dart';import 'package:flutter/material.dart';import 'provider/kuis_modul_1_ipa_smp_three_provider.dart';class KuisModul1IpaSmpThreeScreen extends StatefulWidget {const KuisModul1IpaSmpThreeScreen({Key? key}) : super(key: key);

@override KuisModul1IpaSmpThreeScreenState createState() =>  KuisModul1IpaSmpThreeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KuisModul1IpaSmpThreeProvider(), child: KuisModul1IpaSmpThreeScreen()); } 
 }
class KuisModul1IpaSmpThreeScreenState extends State<KuisModul1IpaSmpThreeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildComponentOne(context), SizedBox(height: 43.v), Container(width: 275.h, margin: EdgeInsets.only(left: 26.h, right: 57.h), child: Text("msg_dampak_letusan_gunung".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleMedium)), SizedBox(height: 2.v), _buildView(context)])), bottomNavigationBar: _buildSebelumnya(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "msg_kuis_sains_dalam".tr, margin: EdgeInsets.only(left: 20.h))); } 
/// Section Widget
Widget _buildComponentOne(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary1, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_nomor_soal".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 7.v), Selector<KuisModul1IpaSmpThreeProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});}), SizedBox(height: 6.v)])); } 
/// Section Widget
Widget _buildView(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 31.h, right: 44.h), child: Consumer<KuisModul1IpaSmpThreeProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: provider.kuisModul1IpaSmpThreeModelObj.viewItemList.length, itemBuilder: (context, index) {ViewItemModel model = provider.kuisModul1IpaSmpThreeModelObj.viewItemList[index]; return ViewItemWidget(model);});}))); } 
/// Section Widget
Widget _buildSebelumnya(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 31.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 121.h, text: "lbl_sebelumnya".tr, onPressed: () {onTapSebelumnya(context);}), CustomElevatedButton(width: 121.h, text: "lbl_selanjutnya".tr, onPressed: () {onTapSelanjutnya(context);})])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the kuisModul1IpaSmpTwoScreen when the action is triggered.
onTapSebelumnya(BuildContext context) { NavigatorService.pushNamed(AppRoutes.kuisModul1IpaSmpTwoScreen, ); } 
/// Navigates to the kuisModul1IpaSmpFourScreen when the action is triggered.
onTapSelanjutnya(BuildContext context) { NavigatorService.pushNamed(AppRoutes.kuisModul1IpaSmpFourScreen, ); } 
 }
