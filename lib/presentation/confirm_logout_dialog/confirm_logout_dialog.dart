import 'models/confirm_logout_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/confirm_logout_provider.dart';class ConfirmLogoutDialog extends StatefulWidget {const ConfirmLogoutDialog({Key? key}) : super(key: key);

@override ConfirmLogoutDialogState createState() =>  ConfirmLogoutDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ConfirmLogoutProvider(), child: ConfirmLogoutDialog()); } 
 }
class ConfirmLogoutDialogState extends State<ConfirmLogoutDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: 278.h, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 40.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder14), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 154.h, child: Text("msg_are_you_sure_you_re".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(height: 38.v, text: "lbl_no".tr, margin: EdgeInsets.only(right: 3.h), buttonStyle: CustomButtonStyles.fillRedA, buttonTextStyle: theme.textTheme.titleSmall!)), Expanded(child: CustomElevatedButton(height: 38.v, text: "lbl_yes".tr, margin: EdgeInsets.only(left: 3.h), buttonStyle: CustomButtonStyles.fillGreen, buttonTextStyle: theme.textTheme.titleSmall!, onPressed: () {onTapYes(context);}))]))])); } 
/// Navigates to the succesLogoutScreen when the action is triggered.
onTapYes(BuildContext context) { NavigatorService.pushNamed(AppRoutes.succesLogoutScreen, ); } 
 }
