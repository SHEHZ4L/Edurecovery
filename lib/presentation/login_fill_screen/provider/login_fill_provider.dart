import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/login_fill_screen/models/login_fill_model.dart';/// A provider class for the LoginFillScreen.
///
/// This provider manages the state of the LoginFillScreen, including the
/// current loginFillModelObj

// ignore_for_file: must_be_immutable
class LoginFillProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

LoginFillModel loginFillModelObj = LoginFillModel();

@override void dispose() { super.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
