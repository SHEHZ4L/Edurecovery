import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_six_screen/models/kuis_modul_1_ipa_smp_six_model.dart';import '../models/textcontent_item_model.dart';/// A provider class for the KuisModul1IpaSmpSixScreen.
///
/// This provider manages the state of the KuisModul1IpaSmpSixScreen, including the
/// current kuisModul1IpaSmpSixModelObj

// ignore_for_file: must_be_immutable
class KuisModul1IpaSmpSixProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1IpaSmpSixModel kuisModul1IpaSmpSixModelObj = KuisModul1IpaSmpSixModel();

@override void dispose() { super.dispose(); } 
 }
