import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/useful_icons_screen/models/useful_icons_model.dart';

/// A provider class for the UsefulIconsScreen.
///
/// This provider manages the state of the UsefulIconsScreen, including the
/// current usefulIconsModelObj
class UsefulIconsProvider extends ChangeNotifier {
  UsefulIconsModel usefulIconsModelObj = UsefulIconsModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
