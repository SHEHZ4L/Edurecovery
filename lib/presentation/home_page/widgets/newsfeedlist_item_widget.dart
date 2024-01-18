import '../models/newsfeedlist_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsfeedlistItemWidget extends StatelessWidget {
  NewsfeedlistItemWidget(
    this.newsfeedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewsfeedlistItemModel newsfeedlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 213.h,
                  child: Text(
                    newsfeedlistItemModelObj.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMedium15,
                  ),
                ),
                Text(
                  newsfeedlistItemModelObj.date!,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: newsfeedlistItemModelObj?.image,
            height: 66.adaptSize,
            width: 66.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(right: 9.h),
          ),
        ],
      ),
    );
  }
}
