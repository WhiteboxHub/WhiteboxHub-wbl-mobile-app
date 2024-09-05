// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class ThemeProvider extends StatelessWidget {
//   final Widget child;

//   const ThemeProvider({required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => ThemeProviderModel(),
//       child: Consumer<ThemeProviderModel>(
//         builder: (context, themeProvider, child) {
//           return MaterialApp(
//             theme: themeProvider.getThemeData(),
//             home: child,
//           );
//         },
//         child: child,
//       ),
//     );
//   }
// }

// class ThemeProviderModel extends ChangeNotifier {
//   ThemeData _themeData = ThemeData.light();

//   ThemeData getThemeData() => _themeData;

//   void setTheme(ThemeData themeData) {
//     _themeData = themeData;
//     notifyListeners();
//   }
// }




import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
