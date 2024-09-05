// import 'package:flutter/material.dart';
// import 'package:motion_tab_bar/MotionTabBar.dart';
// import 'package:provider/provider.dart';
// import 'auth_provider.dart';
// import 'theme_provider.dart';
// import 'widgets/header.dart';
// import 'screens/home_screen.dart';
// import 'screens/schedule_screen.dart';
// import 'screens/recording_screen.dart';
// import 'screens/presentation_screen.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => AuthProvider()),
//         ChangeNotifierProvider(create: (context) => ThemeProvider()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return MaterialApp(
//       theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
//       home: MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     HomeScreen(),
//     ScheduleScreen(),
//     RecordingScreen(),
//     PresentationScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60),
//         child: Header(),
//       ),
//       body: _pages[_currentIndex],
//       bottomNavigationBar: MotionTabBar(
//         labels: ["Home", "Schedule", "Recording", "Presentation"],
//         icons: [
//           Icons.home,
//           Icons.schedule,
//           Icons.record_voice_over,
//           Icons.business_center,  // Use an alternative icon
//         ],
//         initialSelectedTab: "Home",
//         onTabItemSelected: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:motion_tab_bar/MotionTabBar.dart';
// import 'package:provider/provider.dart';
// import 'auth_provider.dart';
// import 'theme_provider.dart';
// import 'widgets/header.dart';
// import 'screens/home_screen.dart';
// import 'screens/schedule_screen.dart';
// import 'screens/recording_screen.dart';
// import 'screens/presentation_screen.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => AuthProvider()),
//         ChangeNotifierProvider(create: (context) => ThemeProvider()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return MaterialApp(
//       theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
//       home: MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     HomeScreen(),
//     ScheduleScreen(),
//     RecordingScreen(),
//     PresentationScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60),
//         child: Header(),
//       ),
//       body: AnimatedSwitcher(
//         duration: const Duration(seconds:1),
//         transitionBuilder: (Widget child, Animation<double> animation) {
//           return FadeTransition(opacity: animation, child: child);
//         },
//         child: _pages[_currentIndex],
//       ),
//       bottomNavigationBar: MotionTabBar(
//         labels: ["Home", "Schedule", "Recording", "Presentation"],
//         icons: [
//           Icons.home,
//           Icons.schedule,
//           Icons.record_voice_over,
//           Icons.business_center,  // Use an alternative icon
//         ],
//         initialSelectedTab: "Home",
//         onTabItemSelected: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:motion_tab_bar/MotionTabBar.dart';
// import 'package:provider/provider.dart';
// import 'auth_provider.dart';
// import 'theme_provider.dart';
// import 'widgets/header.dart';
// import 'widgets/drawer_nav.dart';
// import 'screens/home_screen.dart';
// import 'screens/schedule_screen.dart';
// import 'screens/recording_screen.dart';
// import 'screens/presentation_screen.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => AuthProvider()),
//         ChangeNotifierProvider(create: (context) => ThemeProvider()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
//       home: MainScreen(),
//       routes: {
//         '/home': (context) => HomeScreen(),
//         '/schedule': (context) => ScheduleScreen(),
//         '/recording': (context) => RecordingScreen(),
//         '/presentation': (context) => PresentationScreen(),
//       },
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     HomeScreen(),
//     ScheduleScreen(),
//     RecordingScreen(),
//     PresentationScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60),
//         child: Header(),
//       ),
//       drawer: DrawerNav(),
//       body: AnimatedSwitcher(
//         duration: const Duration(seconds:1),
//         transitionBuilder: (Widget child, Animation<double> animation) {
//           return FadeTransition(opacity: animation, child: child);
//         },
//         child: _pages[_currentIndex],
//       ),
//       bottomNavigationBar: MotionTabBar(
//         labels: ["Home", "Schedule", "Recording", "Presentation"],
//         icons: [
//           Icons.home,
//           Icons.schedule,
//           Icons.record_voice_over,
//           Icons.business_center,
//         ],
//         initialSelectedTab: "Home",
//         onTabItemSelected: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';
import 'theme_provider.dart';
import 'widgets/header.dart';
import 'widgets/drawer_nav.dart';
import 'screens/home_screen.dart';
import 'screens/schedule_screen.dart';
import 'screens/faq_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/login_screen.dart';
import 'screens/custom_signup_screen.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: MainScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/schedule': (context) => ScheduleScreen(),
        '/faq': (context) => FAQScreen(),
        '/contact': (context) => ContactScreen(),
      },
//       routes: {
//   '/home': (context) => HomeScreen(),
//   '/login': (context) => LoginScreen(),
//    '/signup': (context) => CustomSignupScreen(),
//   '/schedule': (context) => ScheduleScreen(),
//   '/faq': (context) => FAQScreen(),
//   '/contact': (context) => ContactScreen(),
// },
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ScheduleScreen(),
    FAQScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(),
      ),
      drawer: DrawerNav(),
      body: AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: MotionTabBar(
        labels: ["Home", "Schedule", "FAQ", "Contact"],
        icons: [
          Icons.home,
          Icons.schedule,
          Icons.question_answer,  // FAQ Icon
          Icons.contact_mail,     // Contact Icon
        ],
        initialSelectedTab: "Home",
        onTabItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
