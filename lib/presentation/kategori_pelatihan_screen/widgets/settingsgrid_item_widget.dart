import '../models/settingsgrid_item_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsgridItemWidget extends StatelessWidget {
  SettingsgridItemWidget(
    this.settingsgridItemModelObj, {
    Key? key,
    this.onTapBtnSettings,
  }) : super(
          key: key,
        );

  SettingsgridItemModel settingsgridItemModelObj;

  VoidCallback? onTapBtnSettings;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 65.adaptSize,
          width: 65.adaptSize,
          padding: EdgeInsets.all(13.h),
          onTap: () {
            onTapBtnSettings!.call();
          },
          child: CustomImageView(
            imagePath: settingsgridItemModelObj?.settings,
          ),
        ),
        SizedBox(height: 10.v),
        Text(
          settingsgridItemModelObj.text!,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
