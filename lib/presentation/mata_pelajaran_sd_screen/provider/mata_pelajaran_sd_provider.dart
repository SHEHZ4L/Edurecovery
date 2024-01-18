import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/mata_pelajaran_sd_screen/models/mata_pelajaran_sd_model.dart';import '../models/matapelajarangrid_item_model.dart';/// A provider class for the MataPelajaranSdScreen.
///
/// This provider manages the state of the MataPelajaranSdScreen, including the
/// current mataPelajaranSdModelObj

// ignore_for_file: must_be_immutable
class MataPelajaranSdProvider extends ChangeNotifier {MataPelajaranSdModel mataPelajaranSdModelObj = MataPelajaranSdModel();

@override void dispose() { super.dispose(); } 
 }
