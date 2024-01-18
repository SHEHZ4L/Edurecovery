import 'models/succes_change_password_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/succes_change_password_provider.dart';

class SuccesChangePasswordScreen extends StatefulWidget {
  const SuccesChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SuccesChangePasswordScreenState createState() =>
      SuccesChangePasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuccesChangePasswordProvider(),
      child: SuccesChangePasswordScreen(),
    );
  }
}

class SuccesChangePasswordScreenState
    extends State<SuccesChangePasswordScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 49.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse16,
                height: 112.v,
                width: 118.h,
                radius: BorderRadius.circular(
                  59.h,
                ),
              ),
              SizedBox(height: 40.v),
              SizedBox(
                width: 261.h,
                child: Text(
                  "msg_successfully_changed".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallInter,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCloseBlueGray900,
        margin: EdgeInsets.fromLTRB(18.h, 23.v, 318.h, 23.v),
      ),
      styleType: Style.bgFill,
    );
  }
}
