import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/detail_modul_1_ipa_smp_screen/models/detail_modul_1_ipa_smp_model.dart';import '../models/viewhierarchy_item_model.dart';/// A provider class for the DetailModul1IpaSmpScreen.
///
/// This provider manages the state of the DetailModul1IpaSmpScreen, including the
/// current detailModul1IpaSmpModelObj

// ignore_for_file: must_be_immutable
class DetailModul1IpaSmpProvider extends ChangeNotifier {DetailModul1IpaSmpModel detailModul1IpaSmpModelObj = DetailModul1IpaSmpModel();

String radioGroup = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton2(String value) { radioGroup = value; notifyListeners(); } 
void changeRadioButton1(int index, String value, ) { detailModul1IpaSmpModelObj.viewhierarchyItemList[index].radioGroup = value; notifyListeners(); } 
 }
