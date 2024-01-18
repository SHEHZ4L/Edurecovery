import 'models/social_media_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/social_media_provider.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SocialMediaScreenState createState() => SocialMediaScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SocialMediaProvider(),
      child: SocialMediaScreen(),
    );
  }
}

class SocialMediaScreenState extends State<SocialMediaScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 209.h,
          padding: EdgeInsets.symmetric(
            horizontal: 46.h,
            vertical: 40.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildClientTestimonials(
                context,
                twitterIcon: ImageConstant.imgBrandsFacebook,
                primaryTwitterIcon: ImageConstant.imgBrandsFacebookPrimary,
                linkedinIcon: ImageConstant.imgBrandsFacebookPrimary24x24,
              ),
              SizedBox(height: 26.v),
              _buildClientTestimonials(
                context,
                twitterIcon: ImageConstant.imgBrandsTwitter,
                primaryTwitterIcon: ImageConstant.imgBrandsTwitterPrimary,
                linkedinIcon: ImageConstant.imgBrandsLinkedin,
              ),
              SizedBox(height: 15.v),
              _buildClientTestimonials(
                context,
                twitterIcon: ImageConstant.imgBrandsLinkedinPrimary,
                primaryTwitterIcon: ImageConstant.imgBrandsInstagram,
                linkedinIcon: ImageConstant.imgBrandsInstagramPrimary,
              ),
              SizedBox(height: 26.v),
              _buildClientTestimonials(
                context,
                twitterIcon: ImageConstant.imgBrandsGoogle,
                primaryTwitterIcon: ImageConstant.imgBrandsGooglePrimary,
                linkedinIcon: ImageConstant.imgBrandsGooglePrimary24x24,
              ),
              SizedBox(height: 15.v),
              CustomImageView(
                imagePath: ImageConstant.imgBrandsYoutube,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildClientTestimonials(
    BuildContext context, {
    required String twitterIcon,
    required String primaryTwitterIcon,
    required String linkedinIcon,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: twitterIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        CustomImageView(
          imagePath: primaryTwitterIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 19.h),
        ),
        CustomImageView(
          imagePath: linkedinIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 26.h),
        ),
      ],
    );
  }
}
