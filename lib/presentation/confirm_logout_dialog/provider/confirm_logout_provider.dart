import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/confirm_logout_dialog/models/confirm_logout_model.dart';/// A provider class for the ConfirmLogoutDialog.
///
/// This provider manages the state of the ConfirmLogoutDialog, including the
/// current confirmLogoutModelObj

// ignore_for_file: must_be_immutable
class ConfirmLogoutProvider extends ChangeNotifier {ConfirmLogoutModel confirmLogoutModelObj = ConfirmLogoutModel();

@override void dispose() { super.dispose(); } 
 }
