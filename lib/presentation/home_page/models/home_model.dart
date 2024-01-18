import '../../../core/app_export.dart';import 'widget_item_model.dart';import 'learninglist_item_model.dart';import 'newsfeedlist_item_model.dart';class HomeModel {List<WidgetItemModel> widgetItemList = [WidgetItemModel(image:ImageConstant.imgRectangle20),WidgetItemModel(image:ImageConstant.imgRectangle18),WidgetItemModel(image:ImageConstant.imgRectangle19)];

List<LearninglistItemModel> learninglistItemList = [LearninglistItemModel(circleImage:ImageConstant.imgEllipse1,text: "Pembelajaran"),LearninglistItemModel(circleImage:ImageConstant.imgEllipse2,text: "Pelatihan")];

List<NewsfeedlistItemModel> newsfeedlistItemList = [NewsfeedlistItemModel(title: "Gempa bumi M 2,7 Guncang Garut, Kedalaman 6 KM",date: "Senin, 15 Jan 2024 08.30",image:ImageConstant.imgRectangle23),NewsfeedlistItemModel(title: "Gempa bumi M 2,7 Guncang Garut, Kedalaman 6 KM",date: "Senin, 15 Jan 2024 08.30",image:ImageConstant.imgRectangle23)];

 }
