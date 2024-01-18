import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/buku_digital_screen/models/buku_digital_model.dart';import '../models/bukudigital_item_model.dart';/// A provider class for the BukuDigitalScreen.
///
/// This provider manages the state of the BukuDigitalScreen, including the
/// current bukuDigitalModelObj

// ignore_for_file: must_be_immutable
class BukuDigitalProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

BukuDigitalModel bukuDigitalModelObj = BukuDigitalModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
