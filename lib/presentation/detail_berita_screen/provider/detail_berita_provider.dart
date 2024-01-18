import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/detail_berita_screen/models/detail_berita_model.dart';/// A provider class for the DetailBeritaScreen.
///
/// This provider manages the state of the DetailBeritaScreen, including the
/// current detailBeritaModelObj

// ignore_for_file: must_be_immutable
class DetailBeritaProvider extends ChangeNotifier {DetailBeritaModel detailBeritaModelObj = DetailBeritaModel();

@override void dispose() { super.dispose(); } 
 }
