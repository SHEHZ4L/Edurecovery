import 'models/fill_fingerprint_login_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:flutter/material.dart';import 'provider/fill_fingerprint_login_provider.dart';class FillFingerprintLoginDialog extends StatefulWidget {const FillFingerprintLoginDialog({Key? key}) : super(key: key);

@override FillFingerprintLoginDialogState createState() =>  FillFingerprintLoginDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FillFingerprintLoginProvider(), child: FillFingerprintLoginDialog()); } 
 }
class FillFingerprintLoginDialogState extends State<FillFingerprintLoginDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: 309.h, padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 22.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 30.v), Text("msg_scan_fingerprint".tr, style: CustomTextStyles.headlineSmallMedium), SizedBox(height: 16.v), GestureDetector(onTap: () {onTapTxtCancel(context);}, child: Text("lbl_cancel".tr, style: CustomTextStyles.titleMediumBold))])); } 
/// Navigates to the loginFillScreen when the action is triggered.
onTapTxtCancel(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginFillScreen, ); } 
 }
