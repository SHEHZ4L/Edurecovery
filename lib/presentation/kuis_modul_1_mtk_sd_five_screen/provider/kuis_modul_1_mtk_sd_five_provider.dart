import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_five_screen/models/kuis_modul_1_mtk_sd_five_model.dart';/// A provider class for the KuisModul1MtkSdFiveScreen.
///
/// This provider manages the state of the KuisModul1MtkSdFiveScreen, including the
/// current kuisModul1MtkSdFiveModelObj

// ignore_for_file: must_be_immutable
class KuisModul1MtkSdFiveProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1MtkSdFiveModel kuisModul1MtkSdFiveModelObj = KuisModul1MtkSdFiveModel();

@override void dispose() { super.dispose(); } 
 }
