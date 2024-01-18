import 'models/succes_logout_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/succes_logout_provider.dart';

class SuccesLogoutScreen extends StatefulWidget {
  const SuccesLogoutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SuccesLogoutScreenState createState() => SuccesLogoutScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuccesLogoutProvider(),
      child: SuccesLogoutScreen(),
    );
  }
}

class SuccesLogoutScreenState extends State<SuccesLogoutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 58.h),
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
              SizedBox(height: 43.v),
              Text(
                "msg_successfully_logout".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
