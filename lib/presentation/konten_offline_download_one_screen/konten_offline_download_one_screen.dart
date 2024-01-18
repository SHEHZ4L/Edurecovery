import 'models/konten_offline_download_one_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/home_page/home_page.dart';
import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:edurecovery/widgets/custom_bottom_bar.dart';
import 'package:edurecovery/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'provider/konten_offline_download_one_provider.dart';

class KontenOfflineDownloadOneScreen extends StatefulWidget {
  const KontenOfflineDownloadOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KontenOfflineDownloadOneScreenState createState() =>
      KontenOfflineDownloadOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KontenOfflineDownloadOneProvider(),
      child: KontenOfflineDownloadOneScreen(),
    );
  }
}

class KontenOfflineDownloadOneScreenState
    extends State<KontenOfflineDownloadOneScreen> {
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
              Selector<KontenOfflineDownloadOneProvider,
                  KontenOfflineDownloadOneModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadOneModelObj,
                builder: (context, kontenOfflineDownloadOneModelObj, child) {
                  return CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 26.h, 15.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_sd".tr,
                    items: kontenOfflineDownloadOneModelObj?.dropdownItemList ??
                        [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadOneProvider>()
                          .onSelected(value);
                    },
                  );
                },
              ),
              SizedBox(height: 2.v),
              Selector<KontenOfflineDownloadOneProvider,
                  KontenOfflineDownloadOneModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadOneModelObj,
                builder: (context, kontenOfflineDownloadOneModelObj, child) {
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
                        kontenOfflineDownloadOneModelObj?.dropdownItemList1 ??
                            [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadOneProvider>()
                          .onSelected1(value);
                    },
                  );
                },
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadOneProvider,
                  KontenOfflineDownloadOneModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadOneModelObj,
                builder: (context, kontenOfflineDownloadOneModelObj, child) {
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
                        kontenOfflineDownloadOneModelObj?.dropdownItemList2 ??
                            [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadOneProvider>()
                          .onSelected2(value);
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
