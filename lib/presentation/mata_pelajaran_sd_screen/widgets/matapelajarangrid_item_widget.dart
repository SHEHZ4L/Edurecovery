import '../models/matapelajarangrid_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MatapelajarangridItemWidget extends StatelessWidget {
  MatapelajarangridItemWidget(
    this.matapelajarangridItemModelObj, {
    Key? key,
    this.onTapImgMatematikaImage,
  }) : super(
          key: key,
        );

  MatapelajarangridItemModel matapelajarangridItemModelObj;

  VoidCallback? onTapImgMatematikaImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: matapelajarangridItemModelObj?.matematikaImage,
          height: 145.adaptSize,
          width: 145.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
          onTap: () {
            onTapImgMatematikaImage!.call();
          },
        ),
        SizedBox(height: 5.v),
        Text(
          matapelajarangridItemModelObj.matematikaText!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
