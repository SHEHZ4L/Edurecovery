import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/sub_help_screen/models/sub_help_model.dart';/// A provider class for the SubHelpScreen.
///
/// This provider manages the state of the SubHelpScreen, including the
/// current subHelpModelObj

// ignore_for_file: must_be_immutable
class SubHelpProvider extends ChangeNotifier {TextEditingController messageController = TextEditingController();

SubHelpModel subHelpModelObj = SubHelpModel();

@override void dispose() { super.dispose(); messageController.dispose(); } 
 }
