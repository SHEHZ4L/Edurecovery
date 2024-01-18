import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/registrasi_screen/models/registrasi_model.dart';/// A provider class for the RegistrasiScreen.
///
/// This provider manages the state of the RegistrasiScreen, including the
/// current registrasiModelObj

// ignore_for_file: must_be_immutable
class RegistrasiProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController userNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmPasswordController = TextEditingController();

RegistrasiModel registrasiModelObj = RegistrasiModel();

@override void dispose() { super.dispose(); emailController.dispose(); userNameController.dispose(); passwordController.dispose(); confirmPasswordController.dispose(); } 
 }
