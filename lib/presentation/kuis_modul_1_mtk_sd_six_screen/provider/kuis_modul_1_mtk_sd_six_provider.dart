import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_six_screen/models/kuis_modul_1_mtk_sd_six_model.dart';/// A provider class for the KuisModul1MtkSdSixScreen.
///
/// This provider manages the state of the KuisModul1MtkSdSixScreen, including the
/// current kuisModul1MtkSdSixModelObj

// ignore_for_file: must_be_immutable
class KuisModul1MtkSdSixProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1MtkSdSixModel kuisModul1MtkSdSixModelObj = KuisModul1MtkSdSixModel();

@override void dispose() { super.dispose(); } 
 }
