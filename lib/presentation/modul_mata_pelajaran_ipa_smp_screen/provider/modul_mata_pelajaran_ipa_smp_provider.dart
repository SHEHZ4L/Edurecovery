import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/modul_mata_pelajaran_ipa_smp_screen/models/modul_mata_pelajaran_ipa_smp_model.dart';import '../models/modulilmupengetahuanalamsmp_item_model.dart';/// A provider class for the ModulMataPelajaranIpaSmpScreen.
///
/// This provider manages the state of the ModulMataPelajaranIpaSmpScreen, including the
/// current modulMataPelajaranIpaSmpModelObj

// ignore_for_file: must_be_immutable
class ModulMataPelajaranIpaSmpProvider extends ChangeNotifier {ModulMataPelajaranIpaSmpModel modulMataPelajaranIpaSmpModelObj = ModulMataPelajaranIpaSmpModel();

@override void dispose() { super.dispose(); } 
 }
