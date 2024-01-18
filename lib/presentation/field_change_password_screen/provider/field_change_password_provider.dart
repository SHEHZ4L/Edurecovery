import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/field_change_password_screen/models/field_change_password_model.dart';/// A provider class for the FieldChangePasswordScreen.
///
/// This provider manages the state of the FieldChangePasswordScreen, including the
/// current fieldChangePasswordModelObj

// ignore_for_file: must_be_immutable
class FieldChangePasswordProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

FieldChangePasswordModel fieldChangePasswordModelObj = FieldChangePasswordModel();

@override void dispose() { super.dispose(); passwordController.dispose(); newpasswordController.dispose(); } 
 }
