import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/sub_account_screen/models/sub_account_model.dart';/// A provider class for the SubAccountScreen.
///
/// This provider manages the state of the SubAccountScreen, including the
/// current subAccountModelObj

// ignore_for_file: must_be_immutable
class SubAccountProvider extends ChangeNotifier {SubAccountModel subAccountModelObj = SubAccountModel();

@override void dispose() { super.dispose(); } 
 }
