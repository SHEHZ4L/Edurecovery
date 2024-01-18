import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/home_page/models/home_model.dart';import '../models/widget_item_model.dart';import '../models/learninglist_item_model.dart';import '../models/newsfeedlist_item_model.dart';/// A provider class for the HomePage.
///
/// This provider manages the state of the HomePage, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {HomeModel homeModelObj = HomeModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); } 
 }
