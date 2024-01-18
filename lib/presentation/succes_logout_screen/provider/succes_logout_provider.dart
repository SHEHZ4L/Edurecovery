import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/succes_logout_screen/models/succes_logout_model.dart';

/// A provider class for the SuccesLogoutScreen.
///
/// This provider manages the state of the SuccesLogoutScreen, including the
/// current succesLogoutModelObj
class SuccesLogoutProvider extends ChangeNotifier {
  SuccesLogoutModel succesLogoutModelObj = SuccesLogoutModel();

  @override
  void dispose() {
    super.dispose();
  }
}
