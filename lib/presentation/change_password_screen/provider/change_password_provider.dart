import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/change_password_screen/models/change_password_model.dart';/// A provider class for the ChangePasswordScreen.
///
/// This provider manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj

// ignore_for_file: must_be_immutable
class ChangePasswordProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

ChangePasswordModel changePasswordModelObj = ChangePasswordModel();

@override void dispose() { super.dispose(); passwordController.dispose(); newpasswordController.dispose(); } 
 }
