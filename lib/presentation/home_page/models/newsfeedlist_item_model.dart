import '../../../core/app_export.dart';/// This class is used in the [newsfeedlist_item_widget] screen.
class NewsfeedlistItemModel {NewsfeedlistItemModel({this.title, this.date, this.image, this.id, }) { title = title  ?? "Gempa bumi M 2,7 Guncang Garut, Kedalaman 6 KM";date = date  ?? "Senin, 15 Jan 2024 08.30";image = image  ?? ImageConstant.imgRectangle23;id = id  ?? ""; }

String? title;

String? date;

String? image;

String? id;

 }
