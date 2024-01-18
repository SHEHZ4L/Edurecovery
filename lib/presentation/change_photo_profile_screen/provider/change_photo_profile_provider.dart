import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/change_photo_profile_screen/models/change_photo_profile_model.dart';/// A provider class for the ChangePhotoProfileScreen.
///
/// This provider manages the state of the ChangePhotoProfileScreen, including the
/// current changePhotoProfileModelObj

// ignore_for_file: must_be_immutable
class ChangePhotoProfileProvider extends ChangeNotifier {ChangePhotoProfileModel changePhotoProfileModelObj = ChangePhotoProfileModel();

@override void dispose() { super.dispose(); } 
 }
