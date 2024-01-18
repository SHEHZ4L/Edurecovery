import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/fingerprint_login_dialog/models/fingerprint_login_model.dart';/// A provider class for the FingerprintLoginDialog.
///
/// This provider manages the state of the FingerprintLoginDialog, including the
/// current fingerprintLoginModelObj

// ignore_for_file: must_be_immutable
class FingerprintLoginProvider extends ChangeNotifier {FingerprintLoginModel fingerprintLoginModelObj = FingerprintLoginModel();

@override void dispose() { super.dispose(); } 
 }
