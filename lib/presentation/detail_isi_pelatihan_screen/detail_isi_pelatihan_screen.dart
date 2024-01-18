import 'models/detail_isi_pelatihan_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/detail_isi_pelatihan_provider.dart';class DetailIsiPelatihanScreen extends StatefulWidget {const DetailIsiPelatihanScreen({Key? key}) : super(key: key);

@override DetailIsiPelatihanScreenState createState() =>  DetailIsiPelatihanScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DetailIsiPelatihanProvider(), child: DetailIsiPelatihanScreen()); } 
 }
class DetailIsiPelatihanScreenState extends State<DetailIsiPelatihanScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 19.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_pendahuluan_entrepreneur".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgRectangle34174x316, height: 174.v, width: 316.h, radius: BorderRadius.circular(5.h)), SizedBox(height: 14.v), SizedBox(width: 314.h, child: Text("msg_peserta_akan_mempelajari".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: theme.textTheme.bodyMedium)), SizedBox(height: 12.v), _buildDetailIsiPelatihan(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSebelumnya(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_1_pendahuluan".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildKonsepUtama(BuildContext context) { return Selector<DetailIsiPelatihanProvider, TextEditingController?>(selector: (context, provider) => provider.konsepUtamaController, builder: (context, konsepUtamaController, child) {return CustomTextFormField(controller: konsepUtamaController, hintText: "msg_memahami_bahwa_inovasi".tr, maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v));}); } 
/// Section Widget
Widget _buildKonsepUtama1(BuildContext context) { return Selector<DetailIsiPelatihanProvider, TextEditingController?>(selector: (context, provider) => provider.konsepUtamaController1, builder: (context, konsepUtamaController1, child) {return CustomTextFormField(controller: konsepUtamaController1, hintText: "msg_pemahaman_bahwa".tr, textInputAction: TextInputAction.done, maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v));}); } 
/// Section Widget
Widget _buildDetailIsiPelatihan(BuildContext context) { return Container(decoration: AppDecoration.fillWhiteA, child: Column(children: [Container(width: 316.h, padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 9.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), Text("msg_memahami_bahwa_seorang".tr, style: CustomTextStyles.bodySmall12)])), Container(width: 316.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("msg_mempelajari_peran".tr, style: CustomTextStyles.bodySmall12)])), _buildKonsepUtama(context), _buildKonsepUtama1(context)])); } 
/// Section Widget
Widget _buildSebelumnyaButton(BuildContext context) { return CustomElevatedButton(width: 121.h, text: "lbl_sebelumnya".tr, buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.bodyMediumGray500); } 
/// Section Widget
Widget _buildSelanjutnyaButton(BuildContext context) { return CustomElevatedButton(width: 121.h, text: "lbl_selanjutnya".tr); } 
/// Section Widget
Widget _buildSebelumnya(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 31.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildSebelumnyaButton(context), _buildSelanjutnyaButton(context)])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
