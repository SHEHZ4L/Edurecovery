import '../kategori_pelatihan_screen/widgets/settingsgrid_item_widget.dart';import 'models/kategori_pelatihan_model.dart';import 'models/settingsgrid_item_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/kategori_pelatihan_provider.dart';class KategoriPelatihanScreen extends StatefulWidget {const KategoriPelatihanScreen({Key? key}) : super(key: key);

@override KategoriPelatihanScreenState createState() =>  KategoriPelatihanScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KategoriPelatihanProvider(), child: KategoriPelatihanScreen()); } 
 }
class KategoriPelatihanScreenState extends State<KategoriPelatihanScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 307.h, margin: EdgeInsets.only(right: 6.h), child: Text("msg_pilih_kejuruan_yang".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium)), SizedBox(height: 13.v), Text("lbl_semua_kejuruan".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 9.v), _buildSettingsGrid(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 30.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 21.h, top: 26.v, bottom: 27.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_pelatihan".tr, margin: EdgeInsets.only(left: 20.h)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildSettingsGrid(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 4.h, right: 3.h), child: Consumer<KategoriPelatihanProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 91.v, crossAxisCount: 4, mainAxisSpacing: 15.h, crossAxisSpacing: 15.h), physics: BouncingScrollPhysics(), itemCount: provider.kategoriPelatihanModelObj.settingsgridItemList.length, itemBuilder: (context, index) {SettingsgridItemModel model = provider.kategoriPelatihanModelObj.settingsgridItemList[index]; return SettingsgridItemWidget(model, onTapBtnSettings: () {onTapBtnSettings(context);});});}))); } 
/// Navigates to the detailPelatihanScreen when the action is triggered.
onTapBtnSettings(BuildContext context) { NavigatorService.pushNamed(AppRoutes.detailPelatihanScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
