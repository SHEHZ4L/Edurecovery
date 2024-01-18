import '../models/description_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DescriptionItemWidget extends StatelessWidget {
  DescriptionItemWidget(
    this.descriptionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DescriptionItemModel descriptionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 247.h,
      child: Text(
        "msg_a_pelepasan_tekanan".tr,
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}
