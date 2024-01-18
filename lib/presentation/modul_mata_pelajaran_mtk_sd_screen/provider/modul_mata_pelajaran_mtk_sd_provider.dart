import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/modul_mata_pelajaran_mtk_sd_screen/models/modul_mata_pelajaran_mtk_sd_model.dart';import '../models/modulmatematika_item_model.dart';/// A provider class for the ModulMataPelajaranMtkSdScreen.
///
/// This provider manages the state of the ModulMataPelajaranMtkSdScreen, including the
/// current modulMataPelajaranMtkSdModelObj

// ignore_for_file: must_be_immutable
class ModulMataPelajaranMtkSdProvider extends ChangeNotifier {ModulMataPelajaranMtkSdModel modulMataPelajaranMtkSdModelObj = ModulMataPelajaranMtkSdModel();

@override void dispose() { super.dispose(); } 
 }
