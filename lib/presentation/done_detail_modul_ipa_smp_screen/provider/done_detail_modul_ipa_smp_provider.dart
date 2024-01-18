import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/done_detail_modul_ipa_smp_screen/models/done_detail_modul_ipa_smp_model.dart';import '../models/viewhierarchy1_item_model.dart';/// A provider class for the DoneDetailModulIpaSmpScreen.
///
/// This provider manages the state of the DoneDetailModulIpaSmpScreen, including the
/// current doneDetailModulIpaSmpModelObj

// ignore_for_file: must_be_immutable
class DoneDetailModulIpaSmpProvider extends ChangeNotifier {DoneDetailModulIpaSmpModel doneDetailModulIpaSmpModelObj = DoneDetailModulIpaSmpModel();

@override void dispose() { super.dispose(); } 
 }
