import '../buku_digital_screen/widgets/bukudigital_item_widget.dart';
import 'models/buku_digital_model.dart';
import 'models/bukudigital_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/home_page/home_page.dart';
import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:edurecovery/widgets/custom_bottom_bar.dart';
import 'package:edurecovery/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/buku_digital_provider.dart';

class BukuDigitalScreen extends StatefulWidget {
  const BukuDigitalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BukuDigitalScreenState createState() => BukuDigitalScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BukuDigitalProvider(),
      child: BukuDigitalScreen(),
    );
  }
}

class BukuDigitalScreenState extends State<BukuDigitalScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 26.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Selector<BukuDigitalProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_cari".tr,
                  );
                },
              ),
              SizedBox(height: 21.v),
              _buildBukuDigital(context),
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
        text: "lbl_buku_digital".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBukuDigital(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Consumer<BukuDigitalProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 177.v,
              crossAxisCount: 3,
              mainAxisSpacing: 7.h,
              crossAxisSpacing: 7.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.bukuDigitalModelObj.bukudigitalItemList.length,
            itemBuilder: (context, index) {
              BukudigitalItemModel model =
                  provider.bukuDigitalModelObj.bukudigitalItemList[index];
              return BukudigitalItemWidget(
                model,
              );
            },
          );
        },
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
