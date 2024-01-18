import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/detail_pelatihan_screen/models/detail_pelatihan_model.dart';/// A provider class for the DetailPelatihanScreen.
///
/// This provider manages the state of the DetailPelatihanScreen, including the
/// current detailPelatihanModelObj

// ignore_for_file: must_be_immutable
class DetailPelatihanProvider extends ChangeNotifier {DetailPelatihanModel detailPelatihanModelObj = DetailPelatihanModel();

String percentageCompleted = "";

String radioGroup = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton1(String value) { percentageCompleted = value; notifyListeners(); } 
void changeRadioButton2(String value) { radioGroup = value; notifyListeners(); } 
 }
