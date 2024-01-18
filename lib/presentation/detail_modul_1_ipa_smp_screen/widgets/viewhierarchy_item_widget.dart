import '../models/viewhierarchy_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
    this.onTapImgMegaphoneImage,
    this.changeRadioButton1,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  Function(String)? changeRadioButton1;

  VoidCallback? onTapImgMegaphoneImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: CustomRadioButton(
              width: 305.h,
              text: "msg_1_perilaku_alam".tr,
              value: "msg_1_perilaku_alam".tr,
              groupValue: viewhierarchyItemModelObj.radioGroup!,
              textStyle: theme.textTheme.bodyMedium,
              isRightCheck: true,
              onChange: (value) {
                changeRadioButton1!(value);
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 21.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: viewhierarchyItemModelObj?.megaphoneImage,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    onTap: () {
                      onTapImgMegaphoneImage!.call();
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload,
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
        ],
      ),
    );
  }
}
