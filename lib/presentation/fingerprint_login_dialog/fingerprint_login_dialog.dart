import 'models/fingerprint_login_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:flutter/material.dart';import 'provider/fingerprint_login_provider.dart';class FingerprintLoginDialog extends StatefulWidget {const FingerprintLoginDialog({Key? key}) : super(key: key);

@override FingerprintLoginDialogState createState() =>  FingerprintLoginDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FingerprintLoginProvider(), child: FingerprintLoginDialog()); } 
 }
class FingerprintLoginDialogState extends State<FingerprintLoginDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: 309.h, padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 22.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 30.v), Text("msg_scan_fingerprint".tr, style: CustomTextStyles.headlineSmallMedium), SizedBox(height: 16.v), GestureDetector(onTap: () {onTapTxtCancel(context);}, child: Text("lbl_cancel".tr, style: CustomTextStyles.titleMediumBold))])); } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtCancel(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
