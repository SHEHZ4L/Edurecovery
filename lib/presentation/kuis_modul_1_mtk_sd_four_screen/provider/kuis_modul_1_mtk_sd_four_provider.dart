import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_four_screen/models/kuis_modul_1_mtk_sd_four_model.dart';/// A provider class for the KuisModul1MtkSdFourScreen.
///
/// This provider manages the state of the KuisModul1MtkSdFourScreen, including the
/// current kuisModul1MtkSdFourModelObj

// ignore_for_file: must_be_immutable
class KuisModul1MtkSdFourProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1MtkSdFourModel kuisModul1MtkSdFourModelObj = KuisModul1MtkSdFourModel();

@override void dispose() { super.dispose(); } 
 }
