import 'models/content_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/content_provider.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ContentScreenState createState() => ContentScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContentProvider(),
      child: ContentScreen(),
    );
  }
}

class ContentScreenState extends State<ContentScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildContent(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return Consumer<ContentProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          height: 314.v,
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
