import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/detail_buku_digital_screen/models/detail_buku_digital_model.dart';/// A provider class for the DetailBukuDigitalScreen.
///
/// This provider manages the state of the DetailBukuDigitalScreen, including the
/// current detailBukuDigitalModelObj

// ignore_for_file: must_be_immutable
class DetailBukuDigitalProvider extends ChangeNotifier {DetailBukuDigitalModel detailBukuDigitalModelObj = DetailBukuDigitalModel();

@override void dispose() { super.dispose(); } 
 }
