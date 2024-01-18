import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/arrows_screen/models/arrows_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A provider class for the ArrowsScreen.
///
/// This provider manages the state of the ArrowsScreen, including the
/// current arrowsModelObj
class ArrowsProvider extends ChangeNotifier {
  ArrowsModel arrowsModelObj = ArrowsModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
