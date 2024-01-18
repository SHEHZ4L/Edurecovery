import 'models/field_pin_fingerprint_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/field_pin_fingerprint_provider.dart';import 'package:edurecovery/presentation/scan_fingeprint_fingerprint_dialog/scan_fingeprint_fingerprint_dialog.dart';class FieldPinFingerprintScreen extends StatefulWidget {const FieldPinFingerprintScreen({Key? key}) : super(key: key);

@override FieldPinFingerprintScreenState createState() =>  FieldPinFingerprintScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FieldPinFingerprintProvider(), child: FieldPinFingerprintScreen()); } 
 }
class FieldPinFingerprintScreenState extends State<FieldPinFingerprintScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_verify_your_pin".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Selector<FieldPinFingerprintProvider, TextEditingController?>(selector: (context, provider) => provider.pincodeController, builder: (context, pincodeController, child) {return CustomTextFormField(controller: pincodeController, hintText: "lbl_4_2_5_2".tr, hintStyle: CustomTextStyles.headlineLargeSecondaryContainer, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 6.v));})), SizedBox(height: 14.v), CustomElevatedButton(height: 55.v, text: "lbl_confirmation".tr, margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL101, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700, onPressed: () {onTapConfirmation(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimary, margin: EdgeInsets.fromLTRB(12.h, 18.v, 314.h, 18.v), onTap: () {onTapArrowLeft(context);}), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a dialog with the [ScanFingeprintFingerprintDialog] content.
onTapConfirmation(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ScanFingeprintFingerprintDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
