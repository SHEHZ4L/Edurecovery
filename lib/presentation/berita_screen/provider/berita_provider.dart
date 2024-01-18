import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/berita_screen/models/berita_model.dart';import '../models/newsfeed_item_model.dart';/// A provider class for the BeritaScreen.
///
/// This provider manages the state of the BeritaScreen, including the
/// current beritaModelObj

// ignore_for_file: must_be_immutable
class BeritaProvider extends ChangeNotifier {BeritaModel beritaModelObj = BeritaModel();

@override void dispose() { super.dispose(); } 
 }
