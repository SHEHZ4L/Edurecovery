import 'models/flie_and_folder_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/flie_and_folder_provider.dart';

class FlieAndFolderScreen extends StatefulWidget {
  const FlieAndFolderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FlieAndFolderScreenState createState() => FlieAndFolderScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FlieAndFolderProvider(),
      child: FlieAndFolderScreen(),
    );
  }
}

class FlieAndFolderScreenState extends State<FlieAndFolderScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildFileAndFolder(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFileAndFolder(BuildContext context) {
    return Consumer<FlieAndFolderProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          height: 366.v,
          width: 556.h,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              firstDate: DateTime(DateTime.now().year - 5),
              lastDate: DateTime(DateTime.now().year + 5),
              firstDayOfWeek: 0,
            ),
            value: provider.selectedDatesFromCalendar1 ?? [],
            onValueChanged: (dates) {
              provider.selectedDatesFromCalendar1 = dates;
            },
          ),
        );
      },
    );
  }
}
