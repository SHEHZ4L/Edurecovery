import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/konten_offline_download_two_screen/models/konten_offline_download_two_model.dart';

/// A provider class for the KontenOfflineDownloadTwoScreen.
///
/// This provider manages the state of the KontenOfflineDownloadTwoScreen, including the
/// current kontenOfflineDownloadTwoModelObj
class KontenOfflineDownloadTwoProvider extends ChangeNotifier {
  KontenOfflineDownloadTwoModel kontenOfflineDownloadTwoModelObj =
      KontenOfflineDownloadTwoModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in kontenOfflineDownloadTwoModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in kontenOfflineDownloadTwoModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in kontenOfflineDownloadTwoModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in kontenOfflineDownloadTwoModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
