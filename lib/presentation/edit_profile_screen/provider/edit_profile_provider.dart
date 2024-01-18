import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/edit_profile_screen/models/edit_profile_model.dart';/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {TextEditingController emailEditTextController = TextEditingController();

TextEditingController usernameEditTextController = TextEditingController();

TextEditingController passwordEditTextController = TextEditingController();

EditProfileModel editProfileModelObj = EditProfileModel();

@override void dispose() { super.dispose(); emailEditTextController.dispose(); usernameEditTextController.dispose(); passwordEditTextController.dispose(); } 
 }
