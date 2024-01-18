import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/pengaturan_screen/models/pengaturan_model.dart';/// A provider class for the PengaturanScreen.
///
/// This provider manages the state of the PengaturanScreen, including the
/// current pengaturanModelObj

// ignore_for_file: must_be_immutable
class PengaturanProvider extends ChangeNotifier {PengaturanModel pengaturanModelObj = PengaturanModel();

@override void dispose() { super.dispose(); } 
 }
