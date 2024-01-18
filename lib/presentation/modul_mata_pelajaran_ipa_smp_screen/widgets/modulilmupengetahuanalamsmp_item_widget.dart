import '../models/modulilmupengetahuanalamsmp_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ModulilmupengetahuanalamsmpItemWidget extends StatelessWidget {
  ModulilmupengetahuanalamsmpItemWidget(
    this.modulilmupengetahuanalamsmpItemModelObj, {
    Key? key,
    this.onTapTitle,
  }) : super(
          key: key,
        );

  ModulilmupengetahuanalamsmpItemModel modulilmupengetahuanalamsmpItemModelObj;

  VoidCallback? onTapTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTitle!.call();
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
            SizedBox(height: 2.v),
            Text(
              modulilmupengetahuanalamsmpItemModelObj.title!,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 1.v),
            Container(
              width: 272.h,
              margin: EdgeInsets.only(right: 11.h),
              child: Text(
                modulilmupengetahuanalamsmpItemModelObj.description!,
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
