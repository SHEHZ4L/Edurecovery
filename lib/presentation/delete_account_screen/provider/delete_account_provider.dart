import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/delete_account_screen/models/delete_account_model.dart';/// A provider class for the DeleteAccountScreen.
///
/// This provider manages the state of the DeleteAccountScreen, including the
/// current deleteAccountModelObj

// ignore_for_file: must_be_immutable
class DeleteAccountProvider extends ChangeNotifier {DeleteAccountModel deleteAccountModelObj = DeleteAccountModel();

@override void dispose() { super.dispose(); } 
 }
