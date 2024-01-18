import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/done_detail_modul_mtk_sd_screen/models/done_detail_modul_mtk_sd_model.dart';import '../models/stacklist1_item_model.dart';/// A provider class for the DoneDetailModulMtkSdScreen.
///
/// This provider manages the state of the DoneDetailModulMtkSdScreen, including the
/// current doneDetailModulMtkSdModelObj

// ignore_for_file: must_be_immutable
class DoneDetailModulMtkSdProvider extends ChangeNotifier {DoneDetailModulMtkSdModel doneDetailModulMtkSdModelObj = DoneDetailModulMtkSdModel();

String radioGroup = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton2(String value) { radioGroup = value; notifyListeners(); } 
void changeRadioButton1(int index, String value, ) { doneDetailModulMtkSdModelObj.stacklist1ItemList[index].radioGroup = value; notifyListeners(); } 
 }
