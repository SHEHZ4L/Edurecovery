import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/ui_primitive_icons_screen/models/ui_primitive_icons_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A provider class for the UiPrimitiveIconsScreen.
///
/// This provider manages the state of the UiPrimitiveIconsScreen, including the
/// current uiPrimitiveIconsModelObj
class UiPrimitiveIconsProvider extends ChangeNotifier {
  UiPrimitiveIconsModel uiPrimitiveIconsModelObj = UiPrimitiveIconsModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
