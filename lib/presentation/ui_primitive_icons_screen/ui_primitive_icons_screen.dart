import 'models/ui_primitive_icons_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/app_bar/appbar_title.dart';
import 'package:edurecovery/widgets/app_bar/appbar_trailing_image.dart';
import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/ui_primitive_icons_provider.dart';

class UiPrimitiveIconsScreen extends StatefulWidget {
  const UiPrimitiveIconsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  UiPrimitiveIconsScreenState createState() => UiPrimitiveIconsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UiPrimitiveIconsProvider(),
      child: UiPrimitiveIconsScreen(),
    );
  }
}

class UiPrimitiveIconsScreenState extends State<UiPrimitiveIconsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Consumer<UiPrimitiveIconsProvider>(
          builder: (context, provider, child) {
            return Container(
              height: 320.v,
              width: 680.h,
              margin: EdgeInsets.symmetric(vertical: 60.v),
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
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      title: AppbarTitle(
        text: "msg_50_ui_primitives".tr,
        margin: EdgeInsets.only(left: 32.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.fromLTRB(32.h, 23.v, 32.h, 26.v),
        ),
      ],
      styleType: Style.bgFill_1,
    );
  }
}
