import 'models/app_navigation_model.dart';
import 'package:edurecovery/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Preview Awal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.previewAwalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile - Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Photo Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changePhotoProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Save Change Photo Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.saveChangePhotoProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pengaturan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pengaturanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sub Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Field Change Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.fieldChangePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PIN (Change Password)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.pinChangePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Field PIN (Change Password)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.fieldPinChangePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Succes Change Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.succesChangePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PIN (Delete Account)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.pinDeleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Field PIN (Delete Account)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.fieldPinDeleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Succes Delete Account".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.succesDeleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Succes Logout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.succesLogoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginFillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login (Data is not complete)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loginDataIsNotCompleteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registrasi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrasiScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registrasi Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrasiFillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sub Help".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subHelpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PIN (Fingerprint)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pinFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Field PIN (Fingerprint)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.fieldPinFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Succes Activation Fingerprint".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.succesActivationFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Status Activation Fingerprint".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.statusActivationFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sub About".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subAboutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tingkatan Pembelajaran Darurat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.tingkatanPembelajaranDaruratScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mata Pelajaran SD".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mataPelajaranSdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modul Mata Pelajaran MTK SD".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.modulMataPelajaranMtkSdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Modul 1 MTK SD".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailModul1MtkSdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Done Detail Modul MTK SD".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.doneDetailModulMtkSdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Resume Modul 1 MTK SD".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resumeModul1MtkSdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 MTK SD - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1MtkSdOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 MTK SD - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1MtkSdTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 MTK SD - Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1MtkSdThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 MTK SD - Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1MtkSdFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 MTK SD - Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1MtkSdFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 MTK SD - Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1MtkSdSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Hasil Skor Kuis Modul 1 MTK SD".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hasilSkorKuisModul1MtkSdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Berita".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.beritaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Berita".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailBeritaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modul Mata Pelajaran IPA SMP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.modulMataPelajaranIpaSmpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Modul 1 IPA SMP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailModul1IpaSmpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Done Detail Modul IPA SMP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.doneDetailModulIpaSmpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Resume Modul 1 IPA SMP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resumeModul1IpaSmpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 IPA SMP - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1IpaSmpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 IPA SMP - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1IpaSmpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 IPA SMP - Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1IpaSmpThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 IPA SMP - Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1IpaSmpFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 IPA SMP - Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1IpaSmpFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kuis Modul 1 IPA SMP - Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kuisModul1IpaSmpSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Hasil Skor Kuis Modul 1 IPA SMP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hasilSkorKuisModul1IpaSmpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Kategori Pelatihan".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kategoriPelatihanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Pelatihan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPelatihanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Isi Pelatihan".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailIsiPelatihanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Konten Offline/Download - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kontenOfflineDownloadOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Konten Offline/Download - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kontenOfflineDownloadTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Konten Offline/Download - Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kontenOfflineDownloadThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Buku Digital ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bukuDigitalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Buku Digital".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.detailBukuDigitalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Isi Buku Digital".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.isiBukuDigitalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UI Primitive Icons".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.uiPrimitiveIconsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Flags".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flagsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "social media".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.socialMediaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Brand and Logos".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.brandAndLogosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Audio and Video".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.audioAndVideoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Content".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Arrows".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.arrowsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Useful Icons".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.usefulIconsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Flie and folder".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flieAndFolderScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
