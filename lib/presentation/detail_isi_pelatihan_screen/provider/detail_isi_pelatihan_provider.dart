import 'package:flutter/material.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/detail_isi_pelatihan_screen/models/detail_isi_pelatihan_model.dart';/// A provider class for the DetailIsiPelatihanScreen.
///
/// This provider manages the state of the DetailIsiPelatihanScreen, including the
/// current detailIsiPelatihanModelObj

// ignore_for_file: must_be_immutable
class DetailIsiPelatihanProvider extends ChangeNotifier {TextEditingController konsepUtamaController = TextEditingController();

TextEditingController konsepUtamaController1 = TextEditingController();

DetailIsiPelatihanModel detailIsiPelatihanModelObj = DetailIsiPelatihanModel();

@override void dispose() { super.dispose(); konsepUtamaController.dispose(); konsepUtamaController1.dispose(); } 
 }
