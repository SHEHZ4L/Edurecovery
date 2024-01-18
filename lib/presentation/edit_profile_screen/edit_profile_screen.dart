import 'models/edit_profile_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/core/utils/validation_functions.dart';import 'package:edurecovery/widgets/app_bar/appbar_leading_image.dart';import 'package:edurecovery/widgets/app_bar/appbar_subtitle_two.dart';import 'package:edurecovery/widgets/app_bar/custom_app_bar.dart';import 'package:edurecovery/widgets/custom_elevated_button.dart';import 'package:edurecovery/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/edit_profile_provider.dart';class EditProfileScreen extends StatefulWidget {const EditProfileScreen({Key? key}) : super(key: key);

@override EditProfileScreenState createState() =>  EditProfileScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => EditProfileProvider(), child: EditProfileScreen()); } 
 }

// ignore_for_file: must_be_immutable
class EditProfileScreenState extends State<EditProfileScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v), child: Column(children: [SizedBox(height: 156.v, width: 168.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse17, height: 156.adaptSize, width: 156.adaptSize, radius: BorderRadius.circular(78.h), alignment: Alignment.centerLeft), CustomImageView(imagePath: ImageConstant.imgUserInterface, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.bottomRight, onTap: () {onTapImgUserInterface(context);})])), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_email".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 11.v), _buildEmailEditText(context), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_username".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 10.v), _buildUsernameEditText(context), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_password".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 10.v), _buildPasswordEditText(context), SizedBox(height: 35.v), _buildUpdateButton(context), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h, top: 27.v, bottom: 28.v), onTap: () {onTapVector(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_edit_profile".tr)); } 
/// Section Widget
Widget _buildEmailEditText(BuildContext context) { return Selector<EditProfileProvider, TextEditingController?>(selector: (context, provider) => provider.emailEditTextController, builder: (context, emailEditTextController, child) {return CustomTextFormField(controller: emailEditTextController, hintText: "msg_stevanus79_gmail_com".tr, hintStyle: theme.textTheme.labelLarge!, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}); } 
/// Section Widget
Widget _buildUsernameEditText(BuildContext context) { return Selector<EditProfileProvider, TextEditingController?>(selector: (context, provider) => provider.usernameEditTextController, builder: (context, usernameEditTextController, child) {return CustomTextFormField(controller: usernameEditTextController, hintText: "lbl_stevanus79".tr, hintStyle: theme.textTheme.labelLarge!);}); } 
/// Section Widget
Widget _buildPasswordEditText(BuildContext context) { return Selector<EditProfileProvider, TextEditingController?>(selector: (context, provider) => provider.passwordEditTextController, builder: (context, passwordEditTextController, child) {return CustomTextFormField(controller: passwordEditTextController, hintText: "lbl".tr, hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true);}); } 
/// Section Widget
Widget _buildUpdateButton(BuildContext context) { return CustomElevatedButton(height: 55.v, text: "lbl_update".tr, margin: EdgeInsets.symmetric(horizontal: 3.h), buttonStyle: CustomButtonStyles.outlinePrimary, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700); } 

/// Navigates to the previous screen.
onTapVector(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the changePhotoProfileScreen when the action is triggered.
onTapImgUserInterface(BuildContext context) { NavigatorService.pushNamed(AppRoutes.changePhotoProfileScreen, ); } 
 }
