import '../berita_screen/widgets/newsfeed_item_widget.dart';import 'models/berita_model.dart';import 'models/newsfeed_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/berita_provider.dart';class BeritaScreen extends StatefulWidget {const BeritaScreen({Key? key}) : super(key: key);

@override BeritaScreenState createState() =>  BeritaScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => BeritaProvider(), child: BeritaScreen()); } 
 }
class BeritaScreenState extends State<BeritaScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(height: 730.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_15_jan_2024".tr, style: CustomTextStyles.bodySmallOnPrimaryContainer))), _buildNewsFeed(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_berita".tr, margin: EdgeInsets.only(left: 20.h))); } 
/// Section Widget
Widget _buildNewsFeed(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(top: 11.v), child: Consumer<BeritaProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 6.0.v), child: SizedBox(width: 314.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray100)));}, itemCount: provider.beritaModelObj.newsfeedItemList.length, itemBuilder: (context, index) {NewsfeedItemModel model = provider.beritaModelObj.newsfeedItemList[index]; return NewsfeedItemWidget(model);});}))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
