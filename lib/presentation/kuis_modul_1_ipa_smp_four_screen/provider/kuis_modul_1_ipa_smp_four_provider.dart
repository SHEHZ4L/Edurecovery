import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_four_screen/models/kuis_modul_1_ipa_smp_four_model.dart';import '../models/description_item_model.dart';/// A provider class for the KuisModul1IpaSmpFourScreen.
///
/// This provider manages the state of the KuisModul1IpaSmpFourScreen, including the
/// current kuisModul1IpaSmpFourModelObj

// ignore_for_file: must_be_immutable
class KuisModul1IpaSmpFourProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1IpaSmpFourModel kuisModul1IpaSmpFourModelObj = KuisModul1IpaSmpFourModel();

@override void dispose() { super.dispose(); } 
 }
