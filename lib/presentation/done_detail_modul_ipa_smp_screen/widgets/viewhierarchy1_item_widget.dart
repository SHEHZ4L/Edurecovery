import '../models/viewhierarchy1_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
    this.onTapImgImage1,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  VoidCallback? onTapImgImage1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.v,
      width: 314.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                right: 30.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: viewhierarchy1ItemModelObj?.image1,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    onTap: () {
                      onTapImgImage1!.call();
                    },
                  ),
                  CustomImageView(
                    imagePath: viewhierarchy1ItemModelObj?.image2,
                    height: 12.v,
                    width: 15.h,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      top: 2.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 176.h,
                  child: Text(
                    viewhierarchy1ItemModelObj.text1!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    left: 116.h,
                    top: 17.v,
                    bottom: 13.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.greenA700,
                    borderRadius: BorderRadius.circular(
                      6.h,
                    ),
                    border: Border.all(
                      color: appTheme.gray400,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
