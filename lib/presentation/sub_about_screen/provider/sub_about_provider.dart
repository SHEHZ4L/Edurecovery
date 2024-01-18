import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/sub_about_screen/models/sub_about_model.dart';/// A provider class for the SubAboutScreen.
///
/// This provider manages the state of the SubAboutScreen, including the
/// current subAboutModelObj

// ignore_for_file: must_be_immutable
class SubAboutProvider extends ChangeNotifier {SubAboutModel subAboutModelObj = SubAboutModel();

@override void dispose() { super.dispose(); } 
 }
