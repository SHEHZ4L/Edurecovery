import 'models/detail_pelatihan_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'provider/detail_pelatihan_provider.dart';class DetailPelatihanScreen extends StatefulWidget {const DetailPelatihanScreen({Key? key}) : super(key: key);

@override DetailPelatihanScreenState createState() =>  DetailPelatihanScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DetailPelatihanProvider(), child: DetailPelatihanScreen()); } 
 }
class DetailPelatihanScreenState extends State<DetailPelatihanScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 19.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 22.h), child: Text("lbl_daftar_modul".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 10.v), Padding(padding: EdgeInsets.symmetric(horizontal: 22.h), child: Container(height: 10.v, width: 316.h, decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h), border: Border.all(color: appTheme.gray500, width: 1.h)), child: ClipRRect(borderRadius: BorderRadius.circular(5.h), child: LinearProgressIndicator(value: 0.08, backgroundColor: appTheme.whiteA700, valueColor: AlwaysStoppedAnimation<Color>(appTheme.greenA70001))))), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 22.h), child: Text("lbl_10_selesai".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 10.v), Divider(), SizedBox(height: 14.v), _buildPercentageCompleted(context), SizedBox(height: 9.v), Divider(indent: 22.h, endIndent: 23.h), SizedBox(height: 15.v), _buildGroup930(context), SizedBox(height: 9.v), Divider(indent: 22.h, endIndent: 23.h), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "msg_modul_entrepreneur".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildPercentageCompleted(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 22.h), child: Consumer<DetailPelatihanProvider>(builder: (context, provider, child) {return provider.detailPelatihanModelObj!.radioList.isNotEmpty ? Column(children: [CustomRadioButton(width: 314.h, text: "msg_1_pendahuluan".tr, value: provider.detailPelatihanModelObj?.radioList[0] ?? "", groupValue: provider.percentageCompleted, padding: EdgeInsets.symmetric(horizontal: 1.h), textStyle: theme.textTheme.bodyMedium, isRightCheck: true, onChange: (value) {provider.changeRadioButton1(value);}), Padding(padding: EdgeInsets.only(top: 12.v, right: 9.h), child: CustomRadioButton(width: 306.h, text: "msg_2_identifikasi".tr, value: provider.detailPelatihanModelObj?.radioList[1] ?? "", groupValue: provider.percentageCompleted, isRightCheck: true, onChange: (value) {provider.changeRadioButton1(value);}))]) : Container();})); } 
/// Section Widget
Widget _buildGroup930(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 22.h), child: Consumer<DetailPelatihanProvider>(builder: (context, provider, child) {return provider.detailPelatihanModelObj!.radioList1.isNotEmpty ? Column(children: [Padding(padding: EdgeInsets.only(right: 9.h), child: CustomRadioButton(width: 306.h, text: "msg_3_perencanaan".tr, value: provider.detailPelatihanModelObj?.radioList1[0] ?? "", groupValue: provider.radioGroup, isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 9.v), child: CustomRadioButton(width: 315.h, text: "msg_4_pemasaran_dan".tr, value: provider.detailPelatihanModelObj?.radioList1[1] ?? "", groupValue: provider.radioGroup, padding: EdgeInsets.symmetric(vertical: 9.v), isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 16.v, right: 9.h), child: CustomRadioButton(width: 306.h, text: "msg_5_manajemen_keuangan".tr, value: provider.detailPelatihanModelObj?.radioList1[2] ?? "", groupValue: provider.radioGroup, isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 11.v), child: CustomRadioButton(width: 315.h, text: "msg_6_pertumbuhan".tr, value: provider.detailPelatihanModelObj?.radioList1[3] ?? "", groupValue: provider.radioGroup, padding: EdgeInsets.symmetric(vertical: 11.v), isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);})), Padding(padding: EdgeInsets.only(top: 12.v, right: 9.h), child: CustomRadioButton(width: 306.h, text: "msg_7_proyek_akhir".tr, value: provider.detailPelatihanModelObj?.radioList1[4] ?? "", groupValue: provider.radioGroup, isRightCheck: true, onChange: (value) {provider.changeRadioButton2(value);}))]) : Container();})); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
