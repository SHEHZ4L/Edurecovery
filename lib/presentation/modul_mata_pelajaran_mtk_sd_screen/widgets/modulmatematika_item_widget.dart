import '../models/modulmatematika_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ModulmatematikaItemWidget extends StatelessWidget {
  ModulmatematikaItemWidget(
    this.modulmatematikaItemModelObj, {
    Key? key,
    this.onTapEighty,
  }) : super(
          key: key,
        );

  ModulmatematikaItemModel modulmatematikaItemModelObj;

  VoidCallback? onTapEighty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEighty!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Text(
              modulmatematikaItemModelObj.konsepDasarText!,
              style: theme.textTheme.bodyMedium,
            ),
            Container(
              width: 272.h,
              margin: EdgeInsets.only(right: 11.h),
              child: Text(
                modulmatematikaItemModelObj.materiText!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
