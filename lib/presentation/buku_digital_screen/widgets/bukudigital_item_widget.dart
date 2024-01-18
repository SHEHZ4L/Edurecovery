import '../models/bukudigital_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BukudigitalItemWidget extends StatelessWidget {
  BukudigitalItemWidget(
    this.bukudigitalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BukudigitalItemModel bukudigitalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: bukudigitalItemModelObj?.image,
          height: 136.v,
          width: 98.h,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: 91.h,
          child: Text(
            bukudigitalItemModelObj.text!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
