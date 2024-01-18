import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/tingkatan_pembelajaran_darurat_screen/models/tingkatan_pembelajaran_darurat_model.dart';import '../models/tingkatanpembelajarandarurat_item_model.dart';/// A provider class for the TingkatanPembelajaranDaruratScreen.
///
/// This provider manages the state of the TingkatanPembelajaranDaruratScreen, including the
/// current tingkatanPembelajaranDaruratModelObj

// ignore_for_file: must_be_immutable
class TingkatanPembelajaranDaruratProvider extends ChangeNotifier {TingkatanPembelajaranDaruratModel tingkatanPembelajaranDaruratModelObj = TingkatanPembelajaranDaruratModel();

@override void dispose() { super.dispose(); } 
 }
