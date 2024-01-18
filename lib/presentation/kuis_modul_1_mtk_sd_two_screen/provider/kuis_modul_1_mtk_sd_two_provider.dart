import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_two_screen/models/kuis_modul_1_mtk_sd_two_model.dart';/// A provider class for the KuisModul1MtkSdTwoScreen.
///
/// This provider manages the state of the KuisModul1MtkSdTwoScreen, including the
/// current kuisModul1MtkSdTwoModelObj

// ignore_for_file: must_be_immutable
class KuisModul1MtkSdTwoProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1MtkSdTwoModel kuisModul1MtkSdTwoModelObj = KuisModul1MtkSdTwoModel();

@override void dispose() { super.dispose(); } 
 }
