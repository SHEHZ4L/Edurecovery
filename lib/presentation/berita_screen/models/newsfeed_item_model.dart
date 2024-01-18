import '../../../core/app_export.dart';/// This class is used in the [newsfeed_item_widget] screen.
class NewsfeedItemModel {NewsfeedItemModel({this.newsTitle, this.newsDate, this.newsImage, this.id, }) { newsTitle = newsTitle  ?? "Gempa bumi M 2,7 Guncang Garut, Kedalaman 6 KM";newsDate = newsDate  ?? "Senin, 15 Jan 2024 08.30";newsImage = newsImage  ?? ImageConstant.imgRectangle23;id = id  ?? ""; }

String? newsTitle;

String? newsDate;

String? newsImage;

String? id;

 }
