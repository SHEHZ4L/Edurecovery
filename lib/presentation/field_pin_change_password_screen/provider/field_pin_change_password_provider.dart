import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/field_pin_change_password_screen/models/field_pin_change_password_model.dart';/// A provider class for the FieldPinChangePasswordScreen.
///
/// This provider manages the state of the FieldPinChangePasswordScreen, including the
/// current fieldPinChangePasswordModelObj

// ignore_for_file: must_be_immutable
class FieldPinChangePasswordProvider extends ChangeNotifier {FieldPinChangePasswordModel fieldPinChangePasswordModelObj = FieldPinChangePasswordModel();

@override void dispose() { super.dispose(); } 
 }
