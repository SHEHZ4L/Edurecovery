import 'models/pin_fingerprint_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_pin_code_text_field.dart';import 'package:flutter/material.dart';import 'provider/pin_fingerprint_provider.dart';class PinFingerprintScreen extends StatefulWidget {const PinFingerprintScreen({Key? key}) : super(key: key);

@override PinFingerprintScreenState createState() =>  PinFingerprintScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PinFingerprintProvider(), child: PinFingerprintScreen()); } 
 }
class PinFingerprintScreenState extends State<PinFingerprintScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_verify_your_pin".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 9.v), _buildOtpView(context), SizedBox(height: 6.v), CustomElevatedButton(height: 55.v, text: "lbl_confirmation".tr, margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL10, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.fromLTRB(12.h, 18.v, 314.h, 18.v), onTap: () {onTapArrowLeft(context);}), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildOtpView(BuildContext context) { return Container(height: 67.v, width: 314.h, margin: EdgeInsets.only(left: 2.h), child: Stack(alignment: Alignment.bottomCenter, children: [Padding(padding: EdgeInsets.only(bottom: 7.v), child: Selector<PinFingerprintProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), Align(alignment: Alignment.bottomCenter, child: Text("lbl2".tr, style: CustomTextStyles.headlineLargeOnPrimaryContainer))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
