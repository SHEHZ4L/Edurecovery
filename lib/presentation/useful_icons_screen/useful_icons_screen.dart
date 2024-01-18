import 'models/useful_icons_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:edurecovery/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'provider/useful_icons_provider.dart';

class UsefulIconsScreen extends StatefulWidget {
  const UsefulIconsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  UsefulIconsScreenState createState() => UsefulIconsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsefulIconsProvider(),
      child: UsefulIconsScreen(),
    );
  }
}

class UsefulIconsScreenState extends State<UsefulIconsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 367.h,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserInterfaceRow(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(right: 106.h),
                child: _buildSportsCardRow(
                  context,
                  sportsCardImage: ImageConstant.imgUserInterface1,
                  securityShieldImage: ImageConstant.imgUserInterface2,
                  securityLockImage: ImageConstant.imgUserInterface3,
                  primarySecurityLockImage: ImageConstant.imgUserInterface4,
                  cakeImage: ImageConstant.img6FtApart,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(right: 106.h),
                child: _buildSportsCardRow(
                  context,
                  sportsCardImage: ImageConstant.imgSportsCard,
                  securityShieldImage: ImageConstant.imgSecurityShield,
                  securityLockImage: ImageConstant.imgSecurityLock,
                  primarySecurityLockImage:
                      ImageConstant.imgSecurityLockPrimary,
                  cakeImage: ImageConstant.imgCake,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildBusinessBillRow(
                  context,
                  businessBillImage: ImageConstant.imgMedicalAmbulance,
                  businessBillPrimaryImage: ImageConstant.imgDeviceMouse,
                  businessBarGraphImage: ImageConstant.imgDeviceWebcam,
                  businessCreditImage: ImageConstant.imgBusinessGrowth,
                  emojiEventsImage: ImageConstant.imgMusic,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildBusinessBillRow(
                  context,
                  businessBillImage: ImageConstant.imgBusinessBill,
                  businessBillPrimaryImage:
                      ImageConstant.imgBusinessBillPrimary,
                  businessBarGraphImage: ImageConstant.imgBusinessBarGraph,
                  businessCreditImage: ImageConstant.imgBusinessCredit,
                  emojiEventsImage: ImageConstant.imgEmojiEvents,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildBusinessBillRow(
                  context,
                  businessBillImage: ImageConstant.imgBusinessBank,
                  businessBillPrimaryImage: ImageConstant.imgBusinessBarGraph,
                  businessBarGraphImage: ImageConstant.imgBusinessCalendar,
                  businessCreditImage: ImageConstant.imgBusinessCalender,
                  emojiEventsImage: ImageConstant.imgDeck,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildBusinessBillRow(
                  context,
                  businessBillImage: ImageConstant.imgUserInterface5,
                  businessBillPrimaryImage: ImageConstant.imgCommunication,
                  businessBarGraphImage: ImageConstant.imgCommunicationPrimary,
                  businessCreditImage: ImageConstant.imgTrain,
                  emojiEventsImage: ImageConstant.imgGroup,
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocalGasStation,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 4.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLocalAirport,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 29.h,
                        bottom: 4.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img360,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 23.h,
                        top: 3.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDeliveryDining,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 4.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroups,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        top: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildDirectionsRunRow(
                  context,
                  directionsRunIcon: ImageConstant.imgStar,
                  directionsBikeIcon: ImageConstant.imgStarBorder,
                  televisionIcon: ImageConstant.imgStarHalf,
                  celebrationIcon: ImageConstant.imgStarBorder,
                  fingerprintIcon: ImageConstant.imgAccountBalance,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildDirectionsRunRow(
                  context,
                  directionsRunIcon: ImageConstant.imgDirectionsRun,
                  directionsBikeIcon: ImageConstant.imgDirectionsBike,
                  televisionIcon: ImageConstant.imgTelevisionBlueGray900,
                  celebrationIcon: ImageConstant.imgCelebration,
                  fingerprintIcon: ImageConstant.imgFingerprintBlueGray900,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  right: 64.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocalBar,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 3.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgHotel,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 25.h,
                        bottom: 3.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDryCleaning,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 25.h,
                        bottom: 3.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLocalAirport,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 18.h,
                        bottom: 3.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLiquor,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 15.h,
                        bottom: 3.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCamera,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        left: 27.h,
                        top: 4.v,
                        bottom: 3.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              _buildWarningRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInterfaceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserInterfacePrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Spacer(
            flex: 35,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserInterfacePrimary24x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserInterface24x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 21.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBusinessOffice,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 22.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDirectionsBus,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          ),
          Spacer(
            flex: 64,
          ),
          Selector<UsefulIconsProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch,
            builder: (context, isSelectedSwitch, child) {
              return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<UsefulIconsProvider>().changeSwitchBox1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWarningRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWarning,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionBlueGray90024x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 26.h,
              bottom: 1.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSchool,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 23.h,
              bottom: 1.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPublic,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 19.h,
              bottom: 1.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShare,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 17.h,
              bottom: 1.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 19.h),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpPrimary,
            height: 24.v,
            width: 21.h,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSportsCardRow(
    BuildContext context, {
    required String sportsCardImage,
    required String securityShieldImage,
    required String securityLockImage,
    required String primarySecurityLockImage,
    required String cakeImage,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: sportsCardImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(top: 3.v),
        ),
        Spacer(),
        CustomImageView(
          imagePath: securityShieldImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(top: 3.v),
        ),
        CustomImageView(
          imagePath: securityLockImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 3.v,
          ),
        ),
        CustomImageView(
          imagePath: primarySecurityLockImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 22.h,
            bottom: 3.v,
          ),
        ),
        CustomImageView(
          imagePath: cakeImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 1.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBusinessBillRow(
    BuildContext context, {
    required String businessBillImage,
    required String businessBillPrimaryImage,
    required String businessBarGraphImage,
    required String businessCreditImage,
    required String emojiEventsImage,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: businessBillImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        CustomImageView(
          imagePath: businessBillPrimaryImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 29.h,
            bottom: 2.v,
          ),
        ),
        CustomImageView(
          imagePath: businessBarGraphImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 23.h,
            bottom: 1.v,
          ),
        ),
        CustomImageView(
          imagePath: businessCreditImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 20.h,
            bottom: 2.v,
          ),
        ),
        CustomImageView(
          imagePath: emojiEventsImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 16.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDirectionsRunRow(
    BuildContext context, {
    required String directionsRunIcon,
    required String directionsBikeIcon,
    required String televisionIcon,
    required String celebrationIcon,
    required String fingerprintIcon,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: directionsRunIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        CustomImageView(
          imagePath: directionsBikeIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 27.h),
        ),
        CustomImageView(
          imagePath: televisionIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 23.h),
        ),
        CustomImageView(
          imagePath: celebrationIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 20.h),
        ),
        CustomImageView(
          imagePath: fingerprintIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 15.h),
        ),
      ],
    );
  }
}
