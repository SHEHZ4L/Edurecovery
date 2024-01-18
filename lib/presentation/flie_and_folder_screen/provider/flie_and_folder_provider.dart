import 'package:flutter/material.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/presentation/flie_and_folder_screen/models/flie_and_folder_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A provider class for the FlieAndFolderScreen.
///
/// This provider manages the state of the FlieAndFolderScreen, including the
/// current flieAndFolderModelObj
class FlieAndFolderProvider extends ChangeNotifier {
  FlieAndFolderModel flieAndFolderModelObj = FlieAndFolderModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
