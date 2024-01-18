import 'models/brand_and_logos_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/brand_and_logos_provider.dart';

class BrandAndLogosScreen extends StatefulWidget {
  const BrandAndLogosScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BrandAndLogosScreenState createState() => BrandAndLogosScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BrandAndLogosProvider(),
      child: BrandAndLogosScreen(),
    );
  }
}

class BrandAndLogosScreenState extends State<BrandAndLogosScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 227.h,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildBrandsAdobeSection(
                  context,
                  image1: ImageConstant.imgBrandsAndroid,
                  image2: ImageConstant.imgBrandsAndroidPrimary,
                  image3: ImageConstant.imgBrandsApple,
                  image4: ImageConstant.imgBrandsApplePrimary,
                ),
              ),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildBrandsAdobeSection(
                  context,
                  image1: ImageConstant.imgBrandsAdobe,
                  image2: ImageConstant.imgBrandsBitcoin,
                  image3: ImageConstant.imgBrandsBlackBerry,
                  image4: ImageConstant.imgBrandsIntercom,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildBrandsAdobeSection(
                  context,
                  image1: ImageConstant.imgBrandsHtml,
                  image2: ImageConstant.imgBrandsHtmlPrimary,
                  image3: ImageConstant.imgBrandsPaypal,
                  image4: ImageConstant.imgBrandsReact,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBrandsSkype,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBrandsSkypePrimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 25.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBrandsSlack,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 15.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBrandsSnapchat,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 15.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildBrandsAdobeSection(
    BuildContext context, {
    required String image1,
    required String image2,
    required String image3,
    required String image4,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: image1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 10.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: image2,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: image3,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: image4,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 10.h),
          ),
        ),
      ],
    );
  }
}
