import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/succes_delete_account_screen/models/succes_delete_account_model.dart';

/// A provider class for the SuccesDeleteAccountScreen.
///
/// This provider manages the state of the SuccesDeleteAccountScreen, including the
/// current succesDeleteAccountModelObj
class SuccesDeleteAccountProvider extends ChangeNotifier {
  SuccesDeleteAccountModel succesDeleteAccountModelObj =
      SuccesDeleteAccountModel();

  @override
  void dispose() {
    super.dispose();
  }
}
