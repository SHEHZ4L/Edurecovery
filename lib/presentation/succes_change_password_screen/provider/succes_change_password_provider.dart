import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/succes_change_password_screen/models/succes_change_password_model.dart';

/// A provider class for the SuccesChangePasswordScreen.
///
/// This provider manages the state of the SuccesChangePasswordScreen, including the
/// current succesChangePasswordModelObj
class SuccesChangePasswordProvider extends ChangeNotifier {
  SuccesChangePasswordModel succesChangePasswordModelObj =
      SuccesChangePasswordModel();

  @override
  void dispose() {
    super.dispose();
  }
}
