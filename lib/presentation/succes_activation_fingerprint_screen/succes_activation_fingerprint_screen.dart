import 'models/succes_activation_fingerprint_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/succes_activation_fingerprint_provider.dart';

class SuccesActivationFingerprintScreen extends StatefulWidget {
  const SuccesActivationFingerprintScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SuccesActivationFingerprintScreenState createState() =>
      SuccesActivationFingerprintScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuccesActivationFingerprintProvider(),
      child: SuccesActivationFingerprintScreen(),
    );
  }
}

class SuccesActivationFingerprintScreenState
    extends State<SuccesActivationFingerprintScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 43.h),
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
              SizedBox(height: 41.v),
              SizedBox(
                width: 271.h,
                child: Text(
                  "msg_fingerprint_succesfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
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
