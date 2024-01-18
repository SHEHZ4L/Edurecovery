import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_five_screen/models/kuis_modul_1_ipa_smp_five_model.dart';import '../models/description1_item_model.dart';/// A provider class for the KuisModul1IpaSmpFiveScreen.
///
/// This provider manages the state of the KuisModul1IpaSmpFiveScreen, including the
/// current kuisModul1IpaSmpFiveModelObj

// ignore_for_file: must_be_immutable
class KuisModul1IpaSmpFiveProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1IpaSmpFiveModel kuisModul1IpaSmpFiveModelObj = KuisModul1IpaSmpFiveModel();

@override void dispose() { super.dispose(); } 
 }
