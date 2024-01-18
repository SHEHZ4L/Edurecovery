import 'models/detail_berita_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/detail_berita_provider.dart';class DetailBeritaScreen extends StatefulWidget {const DetailBeritaScreen({Key? key}) : super(key: key);

@override DetailBeritaScreenState createState() =>  DetailBeritaScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DetailBeritaProvider(), child: DetailBeritaScreen()); } 
 }
class DetailBeritaScreenState extends State<DetailBeritaScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(22.h), child: Column(children: [Container(width: 267.h, margin: EdgeInsets.only(left: 23.h, right: 25.h), child: Text("msg_gempa_bumi_m_2_7".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallPrimary_1)), SizedBox(height: 5.v), Text("msg_wisma_putra_detikjabar".tr, style: CustomTextStyles.bodySmallOrangeA700), SizedBox(height: 4.v), Text("msg_senin_15_jan_2024".tr, style: CustomTextStyles.bodySmallOnPrimaryContainer), SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgRectangle23, height: 198.v, width: 297.h, radius: BorderRadius.circular(10.h)), SizedBox(height: 24.v), Divider(), SizedBox(height: 8.v), SizedBox(width: 315.h, child: Text("msg_bandung_gempa".tr, maxLines: 15, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify, style: theme.textTheme.bodyMedium)), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_berita".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
