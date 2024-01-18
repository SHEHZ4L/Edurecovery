import '../models/learninglist_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearninglistItemWidget extends StatelessWidget {
  LearninglistItemWidget(
    this.learninglistItemModelObj, {
    Key? key,
    this.onTapImgCircleImage,
    this.onTapTxtText,
  }) : super(
          key: key,
        );

  LearninglistItemModel learninglistItemModelObj;

  VoidCallback? onTapImgCircleImage;

  VoidCallback? onTapTxtText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 153.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: learninglistItemModelObj?.circleImage,
            height: 81.adaptSize,
            width: 81.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
            onTap: () {
              onTapImgCircleImage!.call();
            },
          ),
          SizedBox(height: 5.v),
          GestureDetector(
            onTap: () {
              onTapTxtText!.call();
            },
            child: Text(
              learninglistItemModelObj.text!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
