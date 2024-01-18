import 'models/audio_and_video_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/audio_and_video_provider.dart';

class AudioAndVideoScreen extends StatefulWidget {
  const AudioAndVideoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AudioAndVideoScreenState createState() => AudioAndVideoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AudioAndVideoProvider(),
      child: AudioAndVideoScreen(),
    );
  }
}

class AudioAndVideoScreenState extends State<AudioAndVideoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 229.h,
          padding: EdgeInsets.symmetric(
            horizontal: 44.h,
            vertical: 32.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPlayArrowRow(
                context,
                playArrowImage: ImageConstant.imgMic,
                playCircleFilledImage: ImageConstant.imgMicNone,
                playCircleOutlineImage: ImageConstant.imgMicOff,
              ),
              SizedBox(height: 21.v),
              _buildPlayArrowRow(
                context,
                playArrowImage: ImageConstant.imgPlayArrow,
                playCircleFilledImage: ImageConstant.imgPlayCircleFilled,
                playCircleOutlineImage: ImageConstant.imgPlayCircleOutline,
              ),
              SizedBox(height: 21.v),
              _buildPlayArrowRow(
                context,
                playArrowImage: ImageConstant.imgVideocam,
                playCircleFilledImage: ImageConstant.imgVideocamOff,
                playCircleOutlineImage: ImageConstant.imgVideoCall,
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(right: 5.h),
                child: _buildVolumeDownRow(
                  context,
                  volumeDown: ImageConstant.imgVolumeMute,
                  hearing: ImageConstant.imgVolumeOff,
                  hearingDisabled: ImageConstant.imgVolumeUp,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 5.h),
                child: _buildVolumeDownRow(
                  context,
                  volumeDown: ImageConstant.imgVolumeDown,
                  hearing: ImageConstant.imgHearing,
                  hearingDisabled: ImageConstant.imgHearingDisabled,
                ),
              ),
              SizedBox(height: 16.v),
              CustomImageView(
                imagePath: ImageConstant.imgBookmark,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPlayArrowRow(
    BuildContext context, {
    required String playArrowImage,
    required String playCircleFilledImage,
    required String playCircleOutlineImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: playArrowImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 18.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: playCircleFilledImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: playCircleOutlineImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 18.h),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildVolumeDownRow(
    BuildContext context, {
    required String volumeDown,
    required String hearing,
    required String hearingDisabled,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: volumeDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 16.h,
              bottom: 5.v,
            ),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: hearing,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              right: 16.h,
            ),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: hearingDisabled,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
            ),
          ),
        ),
      ],
    );
  }
}
