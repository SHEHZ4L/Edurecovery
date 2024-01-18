import '../models/newsfeed_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsfeedItemWidget extends StatelessWidget {
  NewsfeedItemWidget(
    this.newsfeedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewsfeedItemModel newsfeedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 213.h,
                  child: Text(
                    newsfeedItemModelObj.newsTitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMedium15,
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  newsfeedItemModelObj.newsDate!,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: newsfeedItemModelObj?.newsImage,
            height: 74.adaptSize,
            width: 74.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(
              left: 18.h,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }
}
