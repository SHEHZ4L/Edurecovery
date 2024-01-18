import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_three_screen/models/kuis_modul_1_ipa_smp_three_model.dart';import '../models/view_item_model.dart';/// A provider class for the KuisModul1IpaSmpThreeScreen.
///
/// This provider manages the state of the KuisModul1IpaSmpThreeScreen, including the
/// current kuisModul1IpaSmpThreeModelObj

// ignore_for_file: must_be_immutable
class KuisModul1IpaSmpThreeProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

KuisModul1IpaSmpThreeModel kuisModul1IpaSmpThreeModelObj = KuisModul1IpaSmpThreeModel();

@override void dispose() { super.dispose(); } 
 }
