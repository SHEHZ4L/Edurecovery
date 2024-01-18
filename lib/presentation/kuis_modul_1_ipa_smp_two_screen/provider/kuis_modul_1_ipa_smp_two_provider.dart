import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_two_screen/models/kuis_modul_1_ipa_smp_two_model.dart';/// A provider class for the KuisModul1IpaSmpTwoScreen.
///
/// This provider manages the state of the KuisModul1IpaSmpTwoScreen, including the
/// current kuisModul1IpaSmpTwoModelObj

// ignore_for_file: must_be_immutable
class KuisModul1IpaSmpTwoProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1IpaSmpTwoModel kuisModul1IpaSmpTwoModelObj = KuisModul1IpaSmpTwoModel();

@override void dispose() { super.dispose(); } 
 }
