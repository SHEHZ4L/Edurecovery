import '../mata_pelajaran_sd_screen/widgets/matapelajarangrid_item_widget.dart';import 'models/mata_pelajaran_sd_model.dart';import 'models/matapelajarangrid_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/mata_pelajaran_sd_provider.dart';class MataPelajaranSdScreen extends StatefulWidget {const MataPelajaranSdScreen({Key? key}) : super(key: key);

@override MataPelajaranSdScreenState createState() =>  MataPelajaranSdScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => MataPelajaranSdProvider(), child: MataPelajaranSdScreen()); } 
 }
class MataPelajaranSdScreenState extends State<MataPelajaranSdScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_mata_pelajaran".tr, style: theme.textTheme.titleMedium), SizedBox(height: 4.v), _buildMataPelajaranGrid(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_sd".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildMataPelajaranGrid(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Consumer<MataPelajaranSdProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 172.v, crossAxisCount: 2, mainAxisSpacing: 18.h, crossAxisSpacing: 18.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.mataPelajaranSdModelObj.matapelajarangridItemList.length, itemBuilder: (context, index) {MatapelajarangridItemModel model = provider.mataPelajaranSdModelObj.matapelajarangridItemList[index]; return MatapelajarangridItemWidget(model, onTapImgMatematikaImage: () {onTapImgMatematikaImage(context);});});})); } 
/// Navigates to the modulMataPelajaranMtkSdScreen when the action is triggered.
onTapImgMatematikaImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.modulMataPelajaranMtkSdScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
