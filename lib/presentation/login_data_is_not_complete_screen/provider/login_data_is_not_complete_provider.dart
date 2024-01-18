import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/login_data_is_not_complete_screen/models/login_data_is_not_complete_model.dart';/// A provider class for the LoginDataIsNotCompleteScreen.
///
/// This provider manages the state of the LoginDataIsNotCompleteScreen, including the
/// current loginDataIsNotCompleteModelObj

// ignore_for_file: must_be_immutable
class LoginDataIsNotCompleteProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

LoginDataIsNotCompleteModel loginDataIsNotCompleteModelObj = LoginDataIsNotCompleteModel();

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
