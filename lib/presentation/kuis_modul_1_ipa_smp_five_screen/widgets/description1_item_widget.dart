import '../models/description1_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Description1ItemWidget extends StatelessWidget {
  Description1ItemWidget(
    this.description1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Description1ItemModel description1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 258.h,
      child: Text(
        "msg_a_melalui_pelepasan".tr,
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}
