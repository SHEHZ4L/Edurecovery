import '../models/stacklist1_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Stacklist1ItemWidget extends StatelessWidget {
  Stacklist1ItemWidget(
    this.stacklist1ItemModelObj, {
    Key? key,
    this.changeRadioButton1,
  }) : super(
          key: key,
        );

  Stacklist1ItemModel stacklist1ItemModelObj;

  Function(String)? changeRadioButton1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21.v,
      width: 306.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: CustomRadioButton(
              width: 306.h,
              text: "lbl_2_pengurangan".tr,
              value: "lbl_2_pengurangan".tr,
              groupValue: stacklist1ItemModelObj.radioGroup!,
              textStyle: theme.textTheme.bodyMedium,
              isRightCheck: true,
              onChange: (value) {
                changeRadioButton1!(value);
              },
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 21.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
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
