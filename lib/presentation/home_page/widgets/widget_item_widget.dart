import '../models/widget_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: widgetItemModelObj?.image,
      height: 172.v,
      width: 285.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
