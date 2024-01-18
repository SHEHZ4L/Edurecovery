import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/konten_offline_download_three_screen/models/konten_offline_download_three_model.dart';

/// A provider class for the KontenOfflineDownloadThreeScreen.
///
/// This provider manages the state of the KontenOfflineDownloadThreeScreen, including the
/// current kontenOfflineDownloadThreeModelObj
class KontenOfflineDownloadThreeProvider extends ChangeNotifier {
  KontenOfflineDownloadThreeModel kontenOfflineDownloadThreeModelObj =
      KontenOfflineDownloadThreeModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in kontenOfflineDownloadThreeModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in kontenOfflineDownloadThreeModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in kontenOfflineDownloadThreeModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
