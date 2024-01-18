import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/registrasi_fill_screen/models/registrasi_fill_model.dart';/// A provider class for the RegistrasiFillScreen.
///
/// This provider manages the state of the RegistrasiFillScreen, including the
/// current registrasiFillModelObj

// ignore_for_file: must_be_immutable
class RegistrasiFillProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController userNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmPasswordController = TextEditingController();

RegistrasiFillModel registrasiFillModelObj = RegistrasiFillModel();

@override void dispose() { super.dispose(); emailController.dispose(); userNameController.dispose(); passwordController.dispose(); confirmPasswordController.dispose(); } 
 }
