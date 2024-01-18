import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/brand_and_logos_screen/models/brand_and_logos_model.dart';

/// A provider class for the BrandAndLogosScreen.
///
/// This provider manages the state of the BrandAndLogosScreen, including the
/// current brandAndLogosModelObj
class BrandAndLogosProvider extends ChangeNotifier {
  BrandAndLogosModel brandAndLogosModelObj = BrandAndLogosModel();

  @override
  void dispose() {
    super.dispose();
  }
}
