
import 'package:get/get.dart';
 import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:jiitak_inc_ui_task/view/screens/dashboard/dashboard_screen.dart';
import 'package:jiitak_inc_ui_task/view/screens/edit_store_data/editdata_screen.dart';
import 'package:jiitak_inc_ui_task/view/screens/homeScreen/home_screen.dart';
import 'package:jiitak_inc_ui_task/view/screens/setupdeatails/setup_details.dart';
import 'package:jiitak_inc_ui_task/view/screens/splash/splash_screen.dart';



class RouteHelper{

  static const String splash = '/splash';

  static const String homescreen='/home';
   static const String dashboardScreen='/dashboard';
static const String setup='/setupscreen';
static const String editpage='/edit';





  static String getHome() => homescreen;
   static String getdash()=>dashboardScreen;
   static String getsetup()=>setup;

static List <GetPage>routes=[


GetPage(name: splash, page: () => const SplashScreen(),),

GetPage(name: homescreen, page: () =>   HomeScreen(),),
GetPage(name: dashboardScreen, page: () =>  DashboardScreen(pageIndex: 0),),
GetPage(name: setup, page: () =>  SetupScreen(),),
GetPage(name: editpage, page: () => EditStoredata(),)
];


}