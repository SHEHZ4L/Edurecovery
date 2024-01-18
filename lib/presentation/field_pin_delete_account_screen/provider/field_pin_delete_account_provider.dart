import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/field_pin_delete_account_screen/models/field_pin_delete_account_model.dart';/// A provider class for the FieldPinDeleteAccountScreen.
///
/// This provider manages the state of the FieldPinDeleteAccountScreen, including the
/// current fieldPinDeleteAccountModelObj

// ignore_for_file: must_be_immutable
class FieldPinDeleteAccountProvider extends ChangeNotifier {TextEditingController pincodeController = TextEditingController();

FieldPinDeleteAccountModel fieldPinDeleteAccountModelObj = FieldPinDeleteAccountModel();

@override void dispose() { super.dispose(); pincodeController.dispose(); } 
 }
