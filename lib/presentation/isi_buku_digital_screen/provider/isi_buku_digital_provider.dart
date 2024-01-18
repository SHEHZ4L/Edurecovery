import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/isi_buku_digital_screen/models/isi_buku_digital_model.dart';/// A provider class for the IsiBukuDigitalScreen.
///
/// This provider manages the state of the IsiBukuDigitalScreen, including the
/// current isiBukuDigitalModelObj

// ignore_for_file: must_be_immutable
class IsiBukuDigitalProvider extends ChangeNotifier {IsiBukuDigitalModel isiBukuDigitalModelObj = IsiBukuDigitalModel();

@override void dispose() { super.dispose(); } 
 }
