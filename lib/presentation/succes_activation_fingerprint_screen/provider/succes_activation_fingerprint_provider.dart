import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/succes_activation_fingerprint_screen/models/succes_activation_fingerprint_model.dart';

/// A provider class for the SuccesActivationFingerprintScreen.
///
/// This provider manages the state of the SuccesActivationFingerprintScreen, including the
/// current succesActivationFingerprintModelObj
class SuccesActivationFingerprintProvider extends ChangeNotifier {
  SuccesActivationFingerprintModel succesActivationFingerprintModelObj =
      SuccesActivationFingerprintModel();

  @override
  void dispose() {
    super.dispose();
  }
}
