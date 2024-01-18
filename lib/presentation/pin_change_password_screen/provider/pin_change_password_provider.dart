import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/pin_change_password_screen/models/pin_change_password_model.dart';/// A provider class for the PinChangePasswordScreen.
///
/// This provider manages the state of the PinChangePasswordScreen, including the
/// current pinChangePasswordModelObj

// ignore_for_file: must_be_immutable
class PinChangePasswordProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

PinChangePasswordModel pinChangePasswordModelObj = PinChangePasswordModel();

@override void dispose() { super.dispose(); } 
 }
