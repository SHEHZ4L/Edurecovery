import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_three_screen/models/kuis_modul_1_mtk_sd_three_model.dart';/// A provider class for the KuisModul1MtkSdThreeScreen.
///
/// This provider manages the state of the KuisModul1MtkSdThreeScreen, including the
/// current kuisModul1MtkSdThreeModelObj

// ignore_for_file: must_be_immutable
class KuisModul1MtkSdThreeProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1MtkSdThreeModel kuisModul1MtkSdThreeModelObj = KuisModul1MtkSdThreeModel();

@override void dispose() { super.dispose(); } 
 }
