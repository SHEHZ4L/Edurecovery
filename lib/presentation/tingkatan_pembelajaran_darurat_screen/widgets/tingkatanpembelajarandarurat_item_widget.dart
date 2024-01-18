import '../models/tingkatanpembelajarandarurat_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TingkatanpembelajarandaruratItemWidget extends StatelessWidget {
  TingkatanpembelajarandaruratItemWidget(
    this.tingkatanpembelajarandaruratItemModelObj, {
    Key? key,
    this.onTapTxtSd,
    this.onTapImgSd1,
  }) : super(
          key: key,
        );

  TingkatanpembelajarandaruratItemModel
      tingkatanpembelajarandaruratItemModelObj;

  VoidCallback? onTapTxtSd;

  VoidCallback? onTapImgSd1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onTapTxtSd!.call();
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                top: 26.v,
                bottom: 26.v,
              ),
              child: Text(
                tingkatanpembelajarandaruratItemModelObj.sd!,
                style: CustomTextStyles.headlineLargeSemiBold,
              ),
            ),
          ),
          CustomImageView(
            imagePath: tingkatanpembelajarandaruratItemModelObj?.sd1,
            height: 101.v,
            width: 99.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            onTap: () {
              onTapImgSd1!.call();
            },
          ),
        ],
      ),
    );
  }
}
