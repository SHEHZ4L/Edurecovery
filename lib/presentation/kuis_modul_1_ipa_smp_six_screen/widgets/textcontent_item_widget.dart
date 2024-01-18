import '../models/textcontent_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextcontentItemWidget extends StatelessWidget {
  TextcontentItemWidget(
    this.textcontentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TextcontentItemModel textcontentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            top: 49.v,
            bottom: 47.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            borderRadius: BorderRadius.circular(
              6.h,
            ),
            border: Border.all(
              color: appTheme.gray400,
              width: 1.h,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 247.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_a_gerakan_lempeng".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
