import '../home_page/widgets/learninglist_item_widget.dart';import '../home_page/widgets/newsfeedlist_item_widget.dart';import '../home_page/widgets/widget_item_widget.dart';import 'models/home_model.dart';import 'models/learninglist_item_model.dart';import 'models/newsfeedlist_item_model.dart';import 'models/widget_item_model.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_title_image.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'provider/home_provider.dart';class HomePage extends StatefulWidget {const HomePage({Key? key}) : super(key: key);

@override HomePageState createState() =>  HomePageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeProvider(), child: HomePage()); } 
 }
class HomePageState extends State<HomePage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 1.v), _buildGreetingSection(context), SizedBox(height: 11.v), _buildLearningList(context), SizedBox(height: 12.v), _buildNewsHeader(context), SizedBox(height: 8.v), _buildNewsFeedList(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 66.v, title: AppbarTitleImage(imagePath: ImageConstant.imgRectangle26, margin: EdgeInsets.only(left: 22.h))); } 
/// Section Widget
Widget _buildGreetingSection(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 22.h), child: Text("lbl_hai_stevanus".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 16.v), Consumer<HomeProvider>(builder: (context, provider, child) {return CarouselSlider.builder(options: CarouselOptions(height: 172.v, initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {provider.sliderIndex = index;}), itemCount: provider.homeModelObj.widgetItemList.length, itemBuilder: (context, index, realIndex) {WidgetItemModel model = provider.homeModelObj.widgetItemList[index]; return WidgetItemWidget(model);});}), SizedBox(height: 7.v), Align(alignment: Alignment.center, child: Consumer<HomeProvider>(builder: (context, provider, child) {return SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: provider.sliderIndex, count: provider.homeModelObj.widgetItemList.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 4, activeDotColor: theme.colorScheme.primary.withOpacity(1), dotColor: appTheme.whiteA700, dotHeight: 10.v, dotWidth: 10.h)));}))]); } 
/// Section Widget
Widget _buildLearningList(BuildContext context) { return SizedBox(height: 145.v, child: Consumer<HomeProvider>(builder: (context, provider, child) {return ListView.separated(padding: EdgeInsets.symmetric(horizontal: 22.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 7.h);}, itemCount: provider.homeModelObj.learninglistItemList.length, itemBuilder: (context, index) {LearninglistItemModel model = provider.homeModelObj.learninglistItemList[index]; return LearninglistItemWidget(model, onTapImgCircleImage: () {onTapImgCircleImage(context);}, onTapTxtText: () {onTapTxtText(context);});});})); } 
/// Section Widget
Widget _buildNewsHeader(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 22.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 3.v), child: Text("lbl_berita".tr, style: theme.textTheme.titleMedium)), CustomOutlinedButton(height: 27.v, width: 97.h, text: "lbl_lihat_semua".tr, buttonStyle: CustomButtonStyles.outlineBlueGrayTL10, buttonTextStyle: CustomTextStyles.labelLargeWhiteA700, onPressed: () {onTapLihatSemua(context);})])); } 
/// Section Widget
Widget _buildNewsFeedList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 22.h), child: Consumer<HomeProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 3.5.v), child: SizedBox(width: 314.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray100)));}, itemCount: provider.homeModelObj.newsfeedlistItemList.length, itemBuilder: (context, index) {NewsfeedlistItemModel model = provider.homeModelObj.newsfeedlistItemList[index]; return NewsfeedlistItemWidget(model);});})); } 
/// Navigates to the tingkatanPembelajaranDaruratScreen when the action is triggered.
onTapImgCircleImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.tingkatanPembelajaranDaruratScreen); } 
/// Navigates to the tingkatanPembelajaranDaruratScreen when the action is triggered.
onTapTxtText(BuildContext context) { NavigatorService.pushNamed(AppRoutes.tingkatanPembelajaranDaruratScreen); } 
/// Navigates to the beritaScreen when the action is triggered.
onTapLihatSemua(BuildContext context) { NavigatorService.pushNamed(AppRoutes.beritaScreen, ); } 
 }
