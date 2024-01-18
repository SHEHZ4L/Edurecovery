import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/flags_screen/models/flags_model.dart';/// A provider class for the FlagsScreen.
///
/// This provider manages the state of the FlagsScreen, including the
/// current flagsModelObj

// ignore_for_file: must_be_immutable
class FlagsProvider extends ChangeNotifier {FlagsModel flagsModelObj = FlagsModel();

@override void dispose() { super.dispose(); } 
 }
