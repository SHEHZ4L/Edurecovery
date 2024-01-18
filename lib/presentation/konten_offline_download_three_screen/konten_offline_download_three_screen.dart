import 'models/konten_offline_download_three_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/home_page/home_page.dart';
import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:edurecovery/widgets/custom_bottom_bar.dart';
import 'package:edurecovery/widgets/custom_drop_down.dart';
import 'package:edurecovery/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/konten_offline_download_three_provider.dart';

class KontenOfflineDownloadThreeScreen extends StatefulWidget {
  const KontenOfflineDownloadThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KontenOfflineDownloadThreeScreenState createState() =>
      KontenOfflineDownloadThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KontenOfflineDownloadThreeProvider(),
      child: KontenOfflineDownloadThreeScreen(),
    );
  }
}

class KontenOfflineDownloadThreeScreenState
    extends State<KontenOfflineDownloadThreeScreen> {
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
              _buildMatematika(
                context,
                text: "lbl_sd".tr,
              ),
              SizedBox(height: 1.v),
              _buildMatematika(
                context,
                text: "lbl_matematika".tr,
              ),
              SizedBox(height: 1.v),
              _buildPerkalian(context),
              SizedBox(height: 1.v),
              CustomElevatedButton(
                height: 54.v,
                text: "msg_5_pengenalan_bentuk2".tr,
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlinePrimary1,
                buttonTextStyle: theme.textTheme.bodyMedium!,
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadThreeProvider,
                  KontenOfflineDownloadThreeModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadThreeModelObj,
                builder: (context, kontenOfflineDownloadThreeModelObj, child) {
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
                        kontenOfflineDownloadThreeModelObj?.dropdownItemList ??
                            [],
                    borderDecoration: DropDownStyleHelper.outlinePrimary1,
                    fillColor: appTheme.gray200,
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadThreeProvider>()
                          .onSelected(value);
                    },
                  );
                },
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadThreeProvider,
                  KontenOfflineDownloadThreeModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadThreeModelObj,
                builder: (context, kontenOfflineDownloadThreeModelObj, child) {
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
                        kontenOfflineDownloadThreeModelObj?.dropdownItemList1 ??
                            [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadThreeProvider>()
                          .onSelected1(value);
                    },
                  );
                },
              ),
              SizedBox(height: 1.v),
              Selector<KontenOfflineDownloadThreeProvider,
                  KontenOfflineDownloadThreeModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.kontenOfflineDownloadThreeModelObj,
                builder: (context, kontenOfflineDownloadThreeModelObj, child) {
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
                        kontenOfflineDownloadThreeModelObj?.dropdownItemList2 ??
                            [],
                    onChanged: (value) {
                      context
                          .read<KontenOfflineDownloadThreeProvider>()
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
  Widget _buildPerkalian(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlinePrimary3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_3_perkalian".tr,
            style: theme.textTheme.bodyMedium,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              right: 6.h,
              bottom: 2.v,
            ),
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

  /// Common widget
  Widget _buildMatematika(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              text,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.primary.withOpacity(1),
              ),
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
