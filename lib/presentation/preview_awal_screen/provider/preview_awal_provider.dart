import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/preview_awal_screen/models/preview_awal_model.dart';/// A provider class for the PreviewAwalScreen.
///
/// This provider manages the state of the PreviewAwalScreen, including the
/// current previewAwalModelObj

// ignore_for_file: must_be_immutable
class PreviewAwalProvider extends ChangeNotifier {PreviewAwalModel previewAwalModelObj = PreviewAwalModel();

@override void dispose() { super.dispose(); } 
 }
