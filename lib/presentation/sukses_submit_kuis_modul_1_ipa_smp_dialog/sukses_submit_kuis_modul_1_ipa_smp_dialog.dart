import 'models/sukses_submit_kuis_modul_1_ipa_smp_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/sukses_submit_kuis_modul_1_ipa_smp_provider.dart';class SuksesSubmitKuisModul1IpaSmpDialog extends StatefulWidget {const SuksesSubmitKuisModul1IpaSmpDialog({Key? key}) : super(key: key);

@override SuksesSubmitKuisModul1IpaSmpDialogState createState() =>  SuksesSubmitKuisModul1IpaSmpDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SuksesSubmitKuisModul1IpaSmpProvider(), child: SuksesSubmitKuisModul1IpaSmpDialog()); } 
 }
class SuksesSubmitKuisModul1IpaSmpDialogState extends State<SuksesSubmitKuisModul1IpaSmpDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: 278.h, padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder14), child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerLeft, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 45.v), onTap: () {onTapImgClose(context);}), CustomImageView(imagePath: ImageConstant.imgEllipse1653x56, height: 53.v, width: 56.h, radius: BorderRadius.circular(28.h), margin: EdgeInsets.only(left: 74.h, top: 16.v))])), SizedBox(height: 14.v), Text("msg_sukses_mengumpulkan".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 12.v), CustomElevatedButton(height: 38.v, text: "lbl_lihat_skor".tr, margin: EdgeInsets.only(left: 14.h, right: 15.h), buttonStyle: CustomButtonStyles.fillBlueATL5, buttonTextStyle: theme.textTheme.titleSmall!, onPressed: () {onTapLihatSkor(context);}), SizedBox(height: 10.v)])); } 

/// Navigates to the previous screen.
onTapImgClose(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the hasilSkorKuisModul1IpaSmpScreen when the action is triggered.
onTapLihatSkor(BuildContext context) { NavigatorService.pushNamed(AppRoutes.hasilSkorKuisModul1IpaSmpScreen, ); } 
 }
