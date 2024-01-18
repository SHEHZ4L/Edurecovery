import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {Viewhierarchy1ItemModel({this.image1, this.image2, this.text1, this.id, }) { image1 = image1  ?? ImageConstant.imgMegaphone;image2 = image2  ?? ImageConstant.imgDownload;text1 = text1  ?? "1 - Perilaku Alam Sebagai       Penyebab Bencana";id = id  ?? ""; }

String? image1;

String? image2;

String? text1;

String? id;

 }
