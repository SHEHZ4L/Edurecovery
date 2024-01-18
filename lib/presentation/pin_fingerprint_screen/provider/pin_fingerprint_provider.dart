import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/pin_fingerprint_screen/models/pin_fingerprint_model.dart';/// A provider class for the PinFingerprintScreen.
///
/// This provider manages the state of the PinFingerprintScreen, including the
/// current pinFingerprintModelObj

// ignore_for_file: must_be_immutable
class PinFingerprintProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

PinFingerprintModel pinFingerprintModelObj = PinFingerprintModel();

@override void dispose() { super.dispose(); } 
 }
