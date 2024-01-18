import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/scan_fingeprint_fingerprint_dialog/models/scan_fingeprint_fingerprint_model.dart';/// A provider class for the ScanFingeprintFingerprintDialog.
///
/// This provider manages the state of the ScanFingeprintFingerprintDialog, including the
/// current scanFingeprintFingerprintModelObj

// ignore_for_file: must_be_immutable
class ScanFingeprintFingerprintProvider extends ChangeNotifier {ScanFingeprintFingerprintModel scanFingeprintFingerprintModelObj = ScanFingeprintFingerprintModel();

@override void dispose() { super.dispose(); } 
 }
