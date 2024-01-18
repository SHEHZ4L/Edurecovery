import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/hasil_skor_kuis_modul_1_mtk_sd_screen/models/hasil_skor_kuis_modul_1_mtk_sd_model.dart';/// A provider class for the HasilSkorKuisModul1MtkSdScreen.
///
/// This provider manages the state of the HasilSkorKuisModul1MtkSdScreen, including the
/// current hasilSkorKuisModul1MtkSdModelObj

// ignore_for_file: must_be_immutable
class HasilSkorKuisModul1MtkSdProvider extends ChangeNotifier {TextEditingController checkmark1Controller = TextEditingController();

TextEditingController checkmark2Controller = TextEditingController();

TextEditingController checkmark3Controller = TextEditingController();

TextEditingController checkmark4Controller = TextEditingController();

HasilSkorKuisModul1MtkSdModel hasilSkorKuisModul1MtkSdModelObj = HasilSkorKuisModul1MtkSdModel();

@override void dispose() { super.dispose(); checkmark1Controller.dispose(); checkmark2Controller.dispose(); checkmark3Controller.dispose(); checkmark4Controller.dispose(); } 
 }
