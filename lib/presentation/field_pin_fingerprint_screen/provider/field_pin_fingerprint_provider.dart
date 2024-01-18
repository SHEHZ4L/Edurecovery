import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/field_pin_fingerprint_screen/models/field_pin_fingerprint_model.dart';/// A provider class for the FieldPinFingerprintScreen.
///
/// This provider manages the state of the FieldPinFingerprintScreen, including the
/// current fieldPinFingerprintModelObj

// ignore_for_file: must_be_immutable
class FieldPinFingerprintProvider extends ChangeNotifier {TextEditingController pincodeController = TextEditingController();

FieldPinFingerprintModel fieldPinFingerprintModelObj = FieldPinFingerprintModel();

@override void dispose() { super.dispose(); pincodeController.dispose(); } 
 }
