import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/save_change_photo_profile_screen/models/save_change_photo_profile_model.dart';/// A provider class for the SaveChangePhotoProfileScreen.
///
/// This provider manages the state of the SaveChangePhotoProfileScreen, including the
/// current saveChangePhotoProfileModelObj

// ignore_for_file: must_be_immutable
class SaveChangePhotoProfileProvider extends ChangeNotifier {SaveChangePhotoProfileModel saveChangePhotoProfileModelObj = SaveChangePhotoProfileModel();

@override void dispose() { super.dispose(); } 
 }
