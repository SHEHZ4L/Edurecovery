import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.radioGroup, this.megaphoneImage, this.id, }) { radioGroup = radioGroup  ?? "";megaphoneImage = megaphoneImage  ?? ImageConstant.imgMegaphone;id = id  ?? ""; }

String? radioGroup;

String? megaphoneImage;

String? id;

 }
