import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kira_book/screens/contacts_screen.dart';
import 'package:kira_book/screens/home_screen.dart';
import 'package:kira_book/screens/login_signup_screen.dart';
import 'package:kira_book/screens/profile_screen.dart';
import 'package:kira_book/screens/transactions_screen.dart';
import 'package:kira_book/widgets/vertical_spacer.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        title: 'kiraBook',
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 0, 0, 0),
            secondary: const Color.fromARGB(255, 56, 126, 255),
            onSecondaryContainer: const Color(0xFF1A1A1A),
            onSurface: const Color(0xFF1A1A1A),
          ),
          textTheme: const TextTheme().copyWith(
              bodyText2: const TextStyle(
            color: Color(0xFF1A1A1A),
          )),
          fontFamily: 'SF-Pro-Rounded',
        ),
        home: SplashScreen(
          seconds: 8,
          navigateAfterSeconds: const LoginSignupScreen(),
          title: Text(
            'kiraBook',
            style: TextStyle(
              fontFamily: 'SF-Pro-Rounded',
              fontWeight: FontWeight.w600,
              fontSize: ScreenUtil().setSp(20),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          image:  Image.asset('assets/images/Logo.png'),
          photoSize: 100.0, 
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          styleTextUnderTheLoader: const TextStyle(),
          loaderColor: Colors.white
        ),
        
      ),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentScreenIndex = 0;

  final screens = [    
    HomeScreen(),
    TransactionsScreen(),
    ContactsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentScreenIndex],
      bottomNavigationBar: Container(
        height: 102.h,
        width: 375.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.w),
            topRight: Radius.circular(20.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: const Offset(0, -10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Container(
            height: 70.h,
            width: 343.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.w),
              color: const Color(0xFFF3F4F5),
            ),
            child: Row(
              children: [
                NavigationButton(
                  isActive: currentScreenIndex == 0,
                  title: 'Home',
                  icon: 'home_icon',
                  onTap: () {
                    setState(() {
                      debugPrint("screen $currentScreenIndex");
                      currentScreenIndex = 0;
                    });
                  },
                ),
                NavigationButton(
                  isActive: currentScreenIndex == 1,
                  title: 'Transactions',
                  icon: 'arrows_icon',
                  onTap: () {
                    setState(() {
                      debugPrint("screen $currentScreenIndex");
                      currentScreenIndex = 1;
                    });
                  },
                ),
                NavigationButton(
                  isActive: currentScreenIndex == 2,
                  title: 'Contacts',
                  icon: 'contacts_icon',
                  onTap: () {
                    setState(() {
                      debugPrint("screen $currentScreenIndex");
                      currentScreenIndex = 2;
                    });
                  },
                ),
                NavigationButton(
                  isActive: currentScreenIndex == 3,
                  title: 'Profile',
                  icon: 'user_icon',
                  onTap: () {
                    setState(() {
                      debugPrint("screen $currentScreenIndex");
                      currentScreenIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key? key,
    required this.isActive,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 70.h,
        width: 82.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 20.w,
              height: 20.h,
              child: FittedBox(
                child: SvgPicture.asset(
                  "assets/images/$icon" + (isActive ? '_active' : '') + ".svg",
                  color:
                      isActive ? Colors.black : Colors.black.withOpacity(0.3),
                ),
                fit: BoxFit.fill,
              ),
            ),
            const VerticalSpacer(height: 6),
            Text(
              title,
              style: TextStyle(
                color: isActive ? Colors.black : Colors.black.withOpacity(0.3),
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
