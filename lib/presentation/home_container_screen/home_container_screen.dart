import 'models/home_container_model.dart';import 'package:edurecovery/core/app_export.dart';import 'package:edurecovery/presentation/home_page/home_page.dart';import 'package:edurecovery/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'provider/home_container_provider.dart';class HomeContainerScreen extends StatefulWidget {const HomeContainerScreen({Key? key}) : super(key: key);

@override HomeContainerScreenState createState() =>  HomeContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeContainerProvider(), child: HomeContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends State<HomeContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.home2bluea70002: return AppRoutes.homePage; case BottomBarEnum.User: return "/"; case BottomBarEnum.keepminusprimarycontainer: return "/"; case BottomBarEnum.Lock: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); default: return DefaultWidget();} } 
 }
