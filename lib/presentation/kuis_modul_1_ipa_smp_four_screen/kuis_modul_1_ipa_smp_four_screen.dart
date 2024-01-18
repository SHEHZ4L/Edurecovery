import '../kuis_modul_1_ipa_smp_four_screen/widgets/description_item_widget.dart';import 'models/description_item_model.dart';import 'models/kuis_modul_1_ipa_smp_four_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_pin_code_text_field.dart';import 'package:flutter/material.dart';import 'provider/kuis_modul_1_ipa_smp_four_provider.dart';class KuisModul1IpaSmpFourScreen extends StatefulWidget {const KuisModul1IpaSmpFourScreen({Key? key}) : super(key: key);

@override KuisModul1IpaSmpFourScreenState createState() =>  KuisModul1IpaSmpFourScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KuisModul1IpaSmpFourProvider(), child: KuisModul1IpaSmpFourScreen()); } 
 }
class KuisModul1IpaSmpFourScreenState extends State<KuisModul1IpaSmpFourScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildComponentOne(context), SizedBox(height: 43.v), Container(width: 275.h, margin: EdgeInsets.only(left: 26.h, right: 57.h), child: Text("msg_apa_yang_dapat_menyebabkan".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleMedium)), SizedBox(height: 2.v), _buildDescription(context)])), bottomNavigationBar: _buildSebelumnya(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "msg_kuis_sains_dalam".tr, margin: EdgeInsets.only(left: 20.h))); } 
/// Section Widget
Widget _buildComponentOne(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 6.v), decoration: AppDecoration.outlinePrimary1, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_nomor_soal".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 7.v), Selector<KuisModul1IpaSmpFourProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});}), SizedBox(height: 6.v)])); } 
/// Section Widget
Widget _buildDescription(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 31.h, right: 63.h), child: Consumer<KuisModul1IpaSmpFourProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: provider.kuisModul1IpaSmpFourModelObj.descriptionItemList.length, itemBuilder: (context, index) {DescriptionItemModel model = provider.kuisModul1IpaSmpFourModelObj.descriptionItemList[index]; return DescriptionItemWidget(model);});}))); } 
/// Section Widget
Widget _buildSebelumnya(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 31.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 121.h, text: "lbl_sebelumnya".tr, onPressed: () {onTapSebelumnya(context);}), CustomElevatedButton(width: 121.h, text: "lbl_selanjutnya".tr, onPressed: () {onTapSelanjutnya(context);})])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the kuisModul1IpaSmpThreeScreen when the action is triggered.
onTapSebelumnya(BuildContext context) { NavigatorService.pushNamed(AppRoutes.kuisModul1IpaSmpThreeScreen, ); } 
/// Navigates to the kuisModul1IpaSmpFiveScreen when the action is triggered.
onTapSelanjutnya(BuildContext context) { NavigatorService.pushNamed(AppRoutes.kuisModul1IpaSmpFiveScreen, ); } 
 }
