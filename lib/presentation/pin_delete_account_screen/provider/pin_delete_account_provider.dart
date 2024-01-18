import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/pin_delete_account_screen/models/pin_delete_account_model.dart';/// A provider class for the PinDeleteAccountScreen.
///
/// This provider manages the state of the PinDeleteAccountScreen, including the
/// current pinDeleteAccountModelObj

// ignore_for_file: must_be_immutable
class PinDeleteAccountProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

PinDeleteAccountModel pinDeleteAccountModelObj = PinDeleteAccountModel();

@override void dispose() { super.dispose(); } 
 }
