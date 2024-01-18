import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/kategori_pelatihan_screen/models/kategori_pelatihan_model.dart';import '../models/settingsgrid_item_model.dart';/// A provider class for the KategoriPelatihanScreen.
///
/// This provider manages the state of the KategoriPelatihanScreen, including the
/// current kategoriPelatihanModelObj

// ignore_for_file: must_be_immutable
class KategoriPelatihanProvider extends ChangeNotifier {KategoriPelatihanModel kategoriPelatihanModelObj = KategoriPelatihanModel();

@override void dispose() { super.dispose(); } 
 }
