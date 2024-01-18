import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/hasil_skor_kuis_modul_1_ipa_smp_screen/models/hasil_skor_kuis_modul_1_ipa_smp_model.dart';/// A provider class for the HasilSkorKuisModul1IpaSmpScreen.
///
/// This provider manages the state of the HasilSkorKuisModul1IpaSmpScreen, including the
/// current hasilSkorKuisModul1IpaSmpModelObj

// ignore_for_file: must_be_immutable
class HasilSkorKuisModul1IpaSmpProvider extends ChangeNotifier {TextEditingController answerThreeController = TextEditingController();

TextEditingController answerThreeController1 = TextEditingController();

TextEditingController answerThreeController2 = TextEditingController();

TextEditingController answerThreeController3 = TextEditingController();

HasilSkorKuisModul1IpaSmpModel hasilSkorKuisModul1IpaSmpModelObj = HasilSkorKuisModul1IpaSmpModel();

String radioGroup = "";

String radioGroup1 = "";

@override void dispose() { super.dispose(); answerThreeController.dispose(); answerThreeController1.dispose(); answerThreeController2.dispose(); answerThreeController3.dispose(); } 
void changeRadioButton1(String value) { radioGroup = value; notifyListeners(); } 
void changeRadioButton2(String value) { radioGroup1 = value; notifyListeners(); } 
 }
