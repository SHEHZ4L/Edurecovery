import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/content_screen/models/content_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A provider class for the ContentScreen.
///
/// This provider manages the state of the ContentScreen, including the
/// current contentModelObj
class ContentProvider extends ChangeNotifier {
  ContentModel contentModelObj = ContentModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
