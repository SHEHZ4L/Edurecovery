import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/status_activation_fingerprint_screen/models/status_activation_fingerprint_model.dart';/// A provider class for the StatusActivationFingerprintScreen.
///
/// This provider manages the state of the StatusActivationFingerprintScreen, including the
/// current statusActivationFingerprintModelObj

// ignore_for_file: must_be_immutable
class StatusActivationFingerprintProvider extends ChangeNotifier {StatusActivationFingerprintModel statusActivationFingerprintModelObj = StatusActivationFingerprintModel();

@override void dispose() { super.dispose(); } 
 }
