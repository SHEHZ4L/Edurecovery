import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/fill_fingerprint_login_dialog/models/fill_fingerprint_login_model.dart';/// A provider class for the FillFingerprintLoginDialog.
///
/// This provider manages the state of the FillFingerprintLoginDialog, including the
/// current fillFingerprintLoginModelObj

// ignore_for_file: must_be_immutable
class FillFingerprintLoginProvider extends ChangeNotifier {FillFingerprintLoginModel fillFingerprintLoginModelObj = FillFingerprintLoginModel();

@override void dispose() { super.dispose(); } 
 }
