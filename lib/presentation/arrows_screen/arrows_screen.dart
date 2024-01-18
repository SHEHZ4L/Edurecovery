import 'models/arrows_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/arrows_provider.dart';

class ArrowsScreen extends StatefulWidget {
  const ArrowsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ArrowsScreenState createState() => ArrowsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ArrowsProvider(),
      child: ArrowsScreen(),
    );
  }
}

class ArrowsScreenState extends State<ArrowsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildArrowsCalendar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowsCalendar(BuildContext context) {
    return Consumer<ArrowsProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          height: 501.v,
          width: 517.h,
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
