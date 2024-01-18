import '../../../core/app_export.dart';/// This class is used in the [settingsgrid_item_widget] screen.
class SettingsgridItemModel {SettingsgridItemModel({this.settings, this.text, this.id, }) { settings = settings  ?? ImageConstant.imgSettingsOnprimary;text = text  ?? "Pertanian";id = id  ?? ""; }

String? settings;

String? text;

String? id;

 }
