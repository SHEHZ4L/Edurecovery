import 'models/konfirmasi_submit_kuis_modul_1_mtk_sd_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/konfirmasi_submit_kuis_modul_1_mtk_sd_provider.dart';import 'package:edurecovery/presentation/sukses_submit_kuis_modul_1_mtk_sd_dialog/sukses_submit_kuis_modul_1_mtk_sd_dialog.dart';class KonfirmasiSubmitKuisModul1MtkSdDialog extends StatefulWidget {const KonfirmasiSubmitKuisModul1MtkSdDialog({Key? key}) : super(key: key);

@override KonfirmasiSubmitKuisModul1MtkSdDialogState createState() =>  KonfirmasiSubmitKuisModul1MtkSdDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KonfirmasiSubmitKuisModul1MtkSdProvider(), child: KonfirmasiSubmitKuisModul1MtkSdDialog()); } 
 }
class KonfirmasiSubmitKuisModul1MtkSdDialogState extends State<KonfirmasiSubmitKuisModul1MtkSdDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: 278.h, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 40.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder14), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: 138.h, child: Text("msg_yakin_untuk_mengumpulkan".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(height: 38.v, text: "lbl_periksa_lagi".tr, margin: EdgeInsets.only(right: 3.h), buttonStyle: CustomButtonStyles.fillRedATL5, buttonTextStyle: theme.textTheme.titleSmall!, onPressed: () {onTapPeriksaLagi(context);})), Expanded(child: CustomElevatedButton(height: 38.v, text: "lbl_yakin".tr, margin: EdgeInsets.only(left: 3.h), buttonStyle: CustomButtonStyles.fillGreenTL5, buttonTextStyle: theme.textTheme.titleSmall!, onPressed: () {onTapYakin(context);}))]))])); } 
/// Navigates to the kuisModul1MtkSdSixScreen when the action is triggered.
onTapPeriksaLagi(BuildContext context) { NavigatorService.pushNamed(AppRoutes.kuisModul1MtkSdSixScreen, ); } 

/// Displays a dialog with the [SuksesSubmitKuisModul1MtkSdDialog] content.
onTapYakin(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: SuksesSubmitKuisModul1MtkSdDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
