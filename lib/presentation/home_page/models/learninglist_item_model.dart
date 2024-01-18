import '../../../core/app_export.dart';/// This class is used in the [learninglist_item_widget] screen.
class LearninglistItemModel {LearninglistItemModel({this.circleImage, this.text, this.id, }) { circleImage = circleImage  ?? ImageConstant.imgEllipse1;text = text  ?? "Pembelajaran";id = id  ?? ""; }

String? circleImage;

String? text;

String? id;

 }
