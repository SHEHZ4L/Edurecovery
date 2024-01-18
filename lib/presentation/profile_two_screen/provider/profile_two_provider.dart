import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/profile_two_screen/models/profile_two_model.dart';/// A provider class for the ProfileTwoScreen.
///
/// This provider manages the state of the ProfileTwoScreen, including the
/// current profileTwoModelObj

// ignore_for_file: must_be_immutable
class ProfileTwoProvider extends ChangeNotifier {ProfileTwoModel profileTwoModelObj = ProfileTwoModel();

@override void dispose() { super.dispose(); } 
 }
