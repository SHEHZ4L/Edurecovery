import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/detail_modul_1_mtk_sd_screen/models/detail_modul_1_mtk_sd_model.dart';import '../models/stacklist_item_model.dart';/// A provider class for the DetailModul1MtkSdScreen.
///
/// This provider manages the state of the DetailModul1MtkSdScreen, including the
/// current detailModul1MtkSdModelObj

// ignore_for_file: must_be_immutable
class DetailModul1MtkSdProvider extends ChangeNotifier {DetailModul1MtkSdModel detailModul1MtkSdModelObj = DetailModul1MtkSdModel();

String radioGroup = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton2(String value) { radioGroup = value; notifyListeners(); } 
void changeRadioButton1(int index, String value, ) { detailModul1MtkSdModelObj.stacklistItemList[index].radioGroup = value; notifyListeners(); } 
 }
