import 'package:flutter/material.dart';
import 'package:edurecovery/presentation/preview_awal_screen/preview_awal_screen.dart';
import 'package:edurecovery/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:edurecovery/presentation/profile_two_screen/profile_two_screen.dart';
import 'package:edurecovery/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:edurecovery/presentation/change_photo_profile_screen/change_photo_profile_screen.dart';
import 'package:edurecovery/presentation/save_change_photo_profile_screen/save_change_photo_profile_screen.dart';
import 'package:edurecovery/presentation/pengaturan_screen/pengaturan_screen.dart';
import 'package:edurecovery/presentation/sub_account_screen/sub_account_screen.dart';
import 'package:edurecovery/presentation/change_password_screen/change_password_screen.dart';
import 'package:edurecovery/presentation/field_change_password_screen/field_change_password_screen.dart';
import 'package:edurecovery/presentation/pin_change_password_screen/pin_change_password_screen.dart';
import 'package:edurecovery/presentation/field_pin_change_password_screen/field_pin_change_password_screen.dart';
import 'package:edurecovery/presentation/succes_change_password_screen/succes_change_password_screen.dart';
import 'package:edurecovery/presentation/delete_account_screen/delete_account_screen.dart';
import 'package:edurecovery/presentation/pin_delete_account_screen/pin_delete_account_screen.dart';
import 'package:edurecovery/presentation/field_pin_delete_account_screen/field_pin_delete_account_screen.dart';
import 'package:edurecovery/presentation/succes_delete_account_screen/succes_delete_account_screen.dart';
import 'package:edurecovery/presentation/succes_logout_screen/succes_logout_screen.dart';
import 'package:edurecovery/presentation/login_screen/login_screen.dart';
import 'package:edurecovery/presentation/login_fill_screen/login_fill_screen.dart';
import 'package:edurecovery/presentation/login_data_is_not_complete_screen/login_data_is_not_complete_screen.dart';
import 'package:edurecovery/presentation/registrasi_screen/registrasi_screen.dart';
import 'package:edurecovery/presentation/registrasi_fill_screen/registrasi_fill_screen.dart';
import 'package:edurecovery/presentation/sub_help_screen/sub_help_screen.dart';
import 'package:edurecovery/presentation/pin_fingerprint_screen/pin_fingerprint_screen.dart';
import 'package:edurecovery/presentation/field_pin_fingerprint_screen/field_pin_fingerprint_screen.dart';
import 'package:edurecovery/presentation/succes_activation_fingerprint_screen/succes_activation_fingerprint_screen.dart';
import 'package:edurecovery/presentation/status_activation_fingerprint_screen/status_activation_fingerprint_screen.dart';
import 'package:edurecovery/presentation/sub_about_screen/sub_about_screen.dart';
import 'package:edurecovery/presentation/home_container_screen/home_container_screen.dart';
import 'package:edurecovery/presentation/tingkatan_pembelajaran_darurat_screen/tingkatan_pembelajaran_darurat_screen.dart';
import 'package:edurecovery/presentation/mata_pelajaran_sd_screen/mata_pelajaran_sd_screen.dart';
import 'package:edurecovery/presentation/modul_mata_pelajaran_mtk_sd_screen/modul_mata_pelajaran_mtk_sd_screen.dart';
import 'package:edurecovery/presentation/detail_modul_1_mtk_sd_screen/detail_modul_1_mtk_sd_screen.dart';
import 'package:edurecovery/presentation/done_detail_modul_mtk_sd_screen/done_detail_modul_mtk_sd_screen.dart';
import 'package:edurecovery/presentation/resume_modul_1_mtk_sd_screen/resume_modul_1_mtk_sd_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_one_screen/kuis_modul_1_mtk_sd_one_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_two_screen/kuis_modul_1_mtk_sd_two_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_three_screen/kuis_modul_1_mtk_sd_three_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_four_screen/kuis_modul_1_mtk_sd_four_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_five_screen/kuis_modul_1_mtk_sd_five_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_mtk_sd_six_screen/kuis_modul_1_mtk_sd_six_screen.dart';
import 'package:edurecovery/presentation/hasil_skor_kuis_modul_1_mtk_sd_screen/hasil_skor_kuis_modul_1_mtk_sd_screen.dart';
import 'package:edurecovery/presentation/berita_screen/berita_screen.dart';
import 'package:edurecovery/presentation/detail_berita_screen/detail_berita_screen.dart';
import 'package:edurecovery/presentation/modul_mata_pelajaran_ipa_smp_screen/modul_mata_pelajaran_ipa_smp_screen.dart';
import 'package:edurecovery/presentation/detail_modul_1_ipa_smp_screen/detail_modul_1_ipa_smp_screen.dart';
import 'package:edurecovery/presentation/done_detail_modul_ipa_smp_screen/done_detail_modul_ipa_smp_screen.dart';
import 'package:edurecovery/presentation/resume_modul_1_ipa_smp_screen/resume_modul_1_ipa_smp_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_one_screen/kuis_modul_1_ipa_smp_one_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_two_screen/kuis_modul_1_ipa_smp_two_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_three_screen/kuis_modul_1_ipa_smp_three_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_four_screen/kuis_modul_1_ipa_smp_four_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_five_screen/kuis_modul_1_ipa_smp_five_screen.dart';
import 'package:edurecovery/presentation/kuis_modul_1_ipa_smp_six_screen/kuis_modul_1_ipa_smp_six_screen.dart';
import 'package:edurecovery/presentation/hasil_skor_kuis_modul_1_ipa_smp_screen/hasil_skor_kuis_modul_1_ipa_smp_screen.dart';
import 'package:edurecovery/presentation/kategori_pelatihan_screen/kategori_pelatihan_screen.dart';
import 'package:edurecovery/presentation/detail_pelatihan_screen/detail_pelatihan_screen.dart';
import 'package:edurecovery/presentation/detail_isi_pelatihan_screen/detail_isi_pelatihan_screen.dart';
import 'package:edurecovery/presentation/konten_offline_download_one_screen/konten_offline_download_one_screen.dart';
import 'package:edurecovery/presentation/konten_offline_download_two_screen/konten_offline_download_two_screen.dart';
import 'package:edurecovery/presentation/konten_offline_download_three_screen/konten_offline_download_three_screen.dart';
import 'package:edurecovery/presentation/buku_digital_screen/buku_digital_screen.dart';
import 'package:edurecovery/presentation/detail_buku_digital_screen/detail_buku_digital_screen.dart';
import 'package:edurecovery/presentation/isi_buku_digital_screen/isi_buku_digital_screen.dart';
import 'package:edurecovery/presentation/ui_primitive_icons_screen/ui_primitive_icons_screen.dart';
import 'package:edurecovery/presentation/flags_screen/flags_screen.dart';
import 'package:edurecovery/presentation/social_media_screen/social_media_screen.dart';
import 'package:edurecovery/presentation/brand_and_logos_screen/brand_and_logos_screen.dart';
import 'package:edurecovery/presentation/audio_and_video_screen/audio_and_video_screen.dart';
import 'package:edurecovery/presentation/content_screen/content_screen.dart';
import 'package:edurecovery/presentation/arrows_screen/arrows_screen.dart';
import 'package:edurecovery/presentation/useful_icons_screen/useful_icons_screen.dart';
import 'package:edurecovery/presentation/flie_and_folder_screen/flie_and_folder_screen.dart';
import 'package:edurecovery/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String previewAwalScreen = '/preview_awal_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileTwoScreen = '/profile_two_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String changePhotoProfileScreen = '/change_photo_profile_screen';

  static const String saveChangePhotoProfileScreen =
      '/save_change_photo_profile_screen';

  static const String pengaturanScreen = '/pengaturan_screen';

  static const String subAccountScreen = '/sub_account_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String fieldChangePasswordScreen =
      '/field_change_password_screen';

  static const String pinChangePasswordScreen = '/pin_change_password_screen';

  static const String fieldPinChangePasswordScreen =
      '/field_pin_change_password_screen';

  static const String succesChangePasswordScreen =
      '/succes_change_password_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String pinDeleteAccountScreen = '/pin_delete_account_screen';

  static const String fieldPinDeleteAccountScreen =
      '/field_pin_delete_account_screen';

  static const String succesDeleteAccountScreen =
      '/succes_delete_account_screen';

  static const String succesLogoutScreen = '/succes_logout_screen';

  static const String loginScreen = '/login_screen';

  static const String loginFillScreen = '/login_fill_screen';

  static const String loginDataIsNotCompleteScreen =
      '/login_data_is_not_complete_screen';

  static const String registrasiScreen = '/registrasi_screen';

  static const String registrasiFillScreen = '/registrasi_fill_screen';

  static const String subHelpScreen = '/sub_help_screen';

  static const String pinFingerprintScreen = '/pin_fingerprint_screen';

  static const String fieldPinFingerprintScreen =
      '/field_pin_fingerprint_screen';

  static const String succesActivationFingerprintScreen =
      '/succes_activation_fingerprint_screen';

  static const String statusActivationFingerprintScreen =
      '/status_activation_fingerprint_screen';

  static const String subAboutScreen = '/sub_about_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String tingkatanPembelajaranDaruratScreen =
      '/tingkatan_pembelajaran_darurat_screen';

  static const String mataPelajaranSdScreen = '/mata_pelajaran_sd_screen';

  static const String modulMataPelajaranMtkSdScreen =
      '/modul_mata_pelajaran_mtk_sd_screen';

  static const String detailModul1MtkSdScreen = '/detail_modul_1_mtk_sd_screen';

  static const String doneDetailModulMtkSdScreen =
      '/done_detail_modul_mtk_sd_screen';

  static const String resumeModul1MtkSdScreen = '/resume_modul_1_mtk_sd_screen';

  static const String kuisModul1MtkSdOneScreen =
      '/kuis_modul_1_mtk_sd_one_screen';

  static const String kuisModul1MtkSdTwoScreen =
      '/kuis_modul_1_mtk_sd_two_screen';

  static const String kuisModul1MtkSdThreeScreen =
      '/kuis_modul_1_mtk_sd_three_screen';

  static const String kuisModul1MtkSdFourScreen =
      '/kuis_modul_1_mtk_sd_four_screen';

  static const String kuisModul1MtkSdFiveScreen =
      '/kuis_modul_1_mtk_sd_five_screen';

  static const String kuisModul1MtkSdSixScreen =
      '/kuis_modul_1_mtk_sd_six_screen';

  static const String hasilSkorKuisModul1MtkSdScreen =
      '/hasil_skor_kuis_modul_1_mtk_sd_screen';

  static const String beritaScreen = '/berita_screen';

  static const String detailBeritaScreen = '/detail_berita_screen';

  static const String modulMataPelajaranIpaSmpScreen =
      '/modul_mata_pelajaran_ipa_smp_screen';

  static const String detailModul1IpaSmpScreen =
      '/detail_modul_1_ipa_smp_screen';

  static const String doneDetailModulIpaSmpScreen =
      '/done_detail_modul_ipa_smp_screen';

  static const String resumeModul1IpaSmpScreen =
      '/resume_modul_1_ipa_smp_screen';

  static const String kuisModul1IpaSmpOneScreen =
      '/kuis_modul_1_ipa_smp_one_screen';

  static const String kuisModul1IpaSmpTwoScreen =
      '/kuis_modul_1_ipa_smp_two_screen';

  static const String kuisModul1IpaSmpThreeScreen =
      '/kuis_modul_1_ipa_smp_three_screen';

  static const String kuisModul1IpaSmpFourScreen =
      '/kuis_modul_1_ipa_smp_four_screen';

  static const String kuisModul1IpaSmpFiveScreen =
      '/kuis_modul_1_ipa_smp_five_screen';

  static const String kuisModul1IpaSmpSixScreen =
      '/kuis_modul_1_ipa_smp_six_screen';

  static const String hasilSkorKuisModul1IpaSmpScreen =
      '/hasil_skor_kuis_modul_1_ipa_smp_screen';

  static const String kategoriPelatihanScreen = '/kategori_pelatihan_screen';

  static const String detailPelatihanScreen = '/detail_pelatihan_screen';

  static const String detailIsiPelatihanScreen = '/detail_isi_pelatihan_screen';

  static const String kontenOfflineDownloadOneScreen =
      '/konten_offline_download_one_screen';

  static const String kontenOfflineDownloadTwoScreen =
      '/konten_offline_download_two_screen';

  static const String kontenOfflineDownloadThreeScreen =
      '/konten_offline_download_three_screen';

  static const String bukuDigitalScreen = '/buku_digital_screen';

  static const String detailBukuDigitalScreen = '/detail_buku_digital_screen';

  static const String isiBukuDigitalScreen = '/isi_buku_digital_screen';

  static const String uiPrimitiveIconsScreen = '/ui_primitive_icons_screen';

  static const String flagsScreen = '/flags_screen';

  static const String socialMediaScreen = '/social_media_screen';

  static const String brandAndLogosScreen = '/brand_and_logos_screen';

  static const String audioAndVideoScreen = '/audio_and_video_screen';

  static const String contentScreen = '/content_screen';

  static const String arrowsScreen = '/arrows_screen';

  static const String usefulIconsScreen = '/useful_icons_screen';

  static const String flieAndFolderScreen = '/flie_and_folder_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        previewAwalScreen: PreviewAwalScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        profileTwoScreen: ProfileTwoScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        changePhotoProfileScreen: ChangePhotoProfileScreen.builder,
        saveChangePhotoProfileScreen: SaveChangePhotoProfileScreen.builder,
        pengaturanScreen: PengaturanScreen.builder,
        subAccountScreen: SubAccountScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        fieldChangePasswordScreen: FieldChangePasswordScreen.builder,
        pinChangePasswordScreen: PinChangePasswordScreen.builder,
        fieldPinChangePasswordScreen: FieldPinChangePasswordScreen.builder,
        succesChangePasswordScreen: SuccesChangePasswordScreen.builder,
        deleteAccountScreen: DeleteAccountScreen.builder,
        pinDeleteAccountScreen: PinDeleteAccountScreen.builder,
        fieldPinDeleteAccountScreen: FieldPinDeleteAccountScreen.builder,
        succesDeleteAccountScreen: SuccesDeleteAccountScreen.builder,
        succesLogoutScreen: SuccesLogoutScreen.builder,
        loginScreen: LoginScreen.builder,
        loginFillScreen: LoginFillScreen.builder,
        loginDataIsNotCompleteScreen: LoginDataIsNotCompleteScreen.builder,
        registrasiScreen: RegistrasiScreen.builder,
        registrasiFillScreen: RegistrasiFillScreen.builder,
        subHelpScreen: SubHelpScreen.builder,
        pinFingerprintScreen: PinFingerprintScreen.builder,
        fieldPinFingerprintScreen: FieldPinFingerprintScreen.builder,
        succesActivationFingerprintScreen:
            SuccesActivationFingerprintScreen.builder,
        statusActivationFingerprintScreen:
            StatusActivationFingerprintScreen.builder,
        subAboutScreen: SubAboutScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        tingkatanPembelajaranDaruratScreen:
            TingkatanPembelajaranDaruratScreen.builder,
        mataPelajaranSdScreen: MataPelajaranSdScreen.builder,
        modulMataPelajaranMtkSdScreen: ModulMataPelajaranMtkSdScreen.builder,
        detailModul1MtkSdScreen: DetailModul1MtkSdScreen.builder,
        doneDetailModulMtkSdScreen: DoneDetailModulMtkSdScreen.builder,
        resumeModul1MtkSdScreen: ResumeModul1MtkSdScreen.builder,
        kuisModul1MtkSdOneScreen: KuisModul1MtkSdOneScreen.builder,
        kuisModul1MtkSdTwoScreen: KuisModul1MtkSdTwoScreen.builder,
        kuisModul1MtkSdThreeScreen: KuisModul1MtkSdThreeScreen.builder,
        kuisModul1MtkSdFourScreen: KuisModul1MtkSdFourScreen.builder,
        kuisModul1MtkSdFiveScreen: KuisModul1MtkSdFiveScreen.builder,
        kuisModul1MtkSdSixScreen: KuisModul1MtkSdSixScreen.builder,
        hasilSkorKuisModul1MtkSdScreen: HasilSkorKuisModul1MtkSdScreen.builder,
        beritaScreen: BeritaScreen.builder,
        detailBeritaScreen: DetailBeritaScreen.builder,
        modulMataPelajaranIpaSmpScreen: ModulMataPelajaranIpaSmpScreen.builder,
        detailModul1IpaSmpScreen: DetailModul1IpaSmpScreen.builder,
        doneDetailModulIpaSmpScreen: DoneDetailModulIpaSmpScreen.builder,
        resumeModul1IpaSmpScreen: ResumeModul1IpaSmpScreen.builder,
        kuisModul1IpaSmpOneScreen: KuisModul1IpaSmpOneScreen.builder,
        kuisModul1IpaSmpTwoScreen: KuisModul1IpaSmpTwoScreen.builder,
        kuisModul1IpaSmpThreeScreen: KuisModul1IpaSmpThreeScreen.builder,
        kuisModul1IpaSmpFourScreen: KuisModul1IpaSmpFourScreen.builder,
        kuisModul1IpaSmpFiveScreen: KuisModul1IpaSmpFiveScreen.builder,
        kuisModul1IpaSmpSixScreen: KuisModul1IpaSmpSixScreen.builder,
        hasilSkorKuisModul1IpaSmpScreen:
            HasilSkorKuisModul1IpaSmpScreen.builder,
        kategoriPelatihanScreen: KategoriPelatihanScreen.builder,
        detailPelatihanScreen: DetailPelatihanScreen.builder,
        detailIsiPelatihanScreen: DetailIsiPelatihanScreen.builder,
        kontenOfflineDownloadOneScreen: KontenOfflineDownloadOneScreen.builder,
        kontenOfflineDownloadTwoScreen: KontenOfflineDownloadTwoScreen.builder,
        kontenOfflineDownloadThreeScreen:
            KontenOfflineDownloadThreeScreen.builder,
        bukuDigitalScreen: BukuDigitalScreen.builder,
        detailBukuDigitalScreen: DetailBukuDigitalScreen.builder,
        isiBukuDigitalScreen: IsiBukuDigitalScreen.builder,
        uiPrimitiveIconsScreen: UiPrimitiveIconsScreen.builder,
        flagsScreen: FlagsScreen.builder,
        socialMediaScreen: SocialMediaScreen.builder,
        brandAndLogosScreen: BrandAndLogosScreen.builder,
        audioAndVideoScreen: AudioAndVideoScreen.builder,
        contentScreen: ContentScreen.builder,
        arrowsScreen: ArrowsScreen.builder,
        usefulIconsScreen: UsefulIconsScreen.builder,
        flieAndFolderScreen: FlieAndFolderScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: PreviewAwalScreen.builder
      };
}
