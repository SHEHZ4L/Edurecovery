import 'models/konten_offline_download_two_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/home_page/home_page.dart';
import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:edurecovery/widgets/custom_bottom_bar.dart';
import 'package:edurecovery/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'provider/konten_offline_download_two_provider.dart';

class KontenOfflineDownloadTwoScreen extends StatefulWidget {
  const KontenOfflineDownloadTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KontenOfflineDownloadTwoScreenState createState() =>
      KontenOfflineDownloadTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KontenOfflineDownloadTwoProvider(),
      child: KontenOfflineDownloadTwoScreen(),
    );
  }
}

class KontenOfflineDownloadTwoScreenState
    extends State<KontenOfflineDownloadTwoScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              _buildKategoriKonten(context),
              SizedBox(height: 16.v),
              Divider(),
              _buildSd(context),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadTwoProvider,
                  KontenOfflineDownloadTwoModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadTwoModelObj,
                builder: (context, kontenOfflineDownloadTwoModelObj, child) {
                  return CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 26.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_matematika".tr,
                    items: kontenOfflineDownloadTwoModelObj?.dropdownItemList ??
                        [],
                    borderDecoration: DropDownStyleHelper.outlinePrimary1,
                    fillColor: appTheme.gray200,
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadTwoProvider>()
                          .onSelected(value);
                    },
                  );
                },
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadTwoProvider,
                  KontenOfflineDownloadTwoModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadTwoModelObj,
                builder: (context, kontenOfflineDownloadTwoModelObj, child) {
                  return CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 26.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "msg_ilmu_pengetahuan".tr,
                    items:
                        kontenOfflineDownloadTwoModelObj?.dropdownItemList1 ??
                            [],
                    borderDecoration: DropDownStyleHelper.outlinePrimary1,
                    fillColor: appTheme.gray200,
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadTwoProvider>()
                          .onSelected1(value);
                    },
                  );
                },
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadTwoProvider,
                  KontenOfflineDownloadTwoModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadTwoModelObj,
                builder: (context, kontenOfflineDownloadTwoModelObj, child) {
                  return CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 26.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_smp".tr,
                    items:
                        kontenOfflineDownloadTwoModelObj?.dropdownItemList2 ??
                            [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadTwoProvider>()
                          .onSelected2(value);
                    },
                  );
                },
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadTwoProvider,
                  KontenOfflineDownloadTwoModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadTwoModelObj,
                builder: (context, kontenOfflineDownloadTwoModelObj, child) {
                  return CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 26.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_sma".tr,
                    items:
                        kontenOfflineDownloadTwoModelObj?.dropdownItemList3 ??
                            [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadTwoProvider>()
                          .onSelected3(value);
                    },
                  );
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_download".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildKategoriKonten(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_kategori_konten".tr,
            style: CustomTextStyles.titleSmallPrimary,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFileDownloadDone,
            height: 21.adaptSize,
            width: 21.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSd(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_sd".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowsUpperArrow,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 4.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home2bluea70002:
        return AppRoutes.homePage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.keepminusprimarycontainer:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
