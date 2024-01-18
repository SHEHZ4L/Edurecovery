import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/konten_offline_download_one_screen/models/konten_offline_download_one_model.dart';

/// A provider class for the KontenOfflineDownloadOneScreen.
///
/// This provider manages the state of the KontenOfflineDownloadOneScreen, including the
/// current kontenOfflineDownloadOneModelObj
class KontenOfflineDownloadOneProvider extends ChangeNotifier {
  KontenOfflineDownloadOneModel kontenOfflineDownloadOneModelObj =
      KontenOfflineDownloadOneModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in kontenOfflineDownloadOneModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in kontenOfflineDownloadOneModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in kontenOfflineDownloadOneModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
