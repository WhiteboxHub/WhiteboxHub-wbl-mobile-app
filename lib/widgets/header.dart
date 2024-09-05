// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:provider/provider.dart';
// import '../auth_provider.dart';
// import '../theme_provider.dart';

// class Header extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return AppBar(
//       backgroundColor: themeProvider.isDarkMode ? Colors.black : Colors.white,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset(
//           themeProvider.isDarkMode ? 'assets/wbl-dark.svg' : 'assets/wbl-light.svg',
//           height: 50,
//         ),
//         onPressed: () {},
//       ),
//       actions: [
//         if (authProvider.isAuthenticated)
//           TextButton(
//             onPressed: () {
//               authProvider.logout();
//               Navigator.pushNamed(context, '/login');
//             },
//             child: Text('Logout', style: TextStyle(color: Colors.white)),
//           )
//         else
//           TextButton(
//             onPressed: () => Navigator.pushNamed(context, '/login'),
//             child: Text('Login', style: TextStyle(color: Colors.white)),
//           ),
//         TextButton(
//           onPressed: () => themeProvider.toggleTheme(),
//           child: Icon(
//             themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
//             color: Colors.white,
//           ),
//         ),
//       ],
//       bottom: PreferredSize(
//         preferredSize: Size.fromHeight(50),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             TextButton(onPressed: () => Navigator.pushNamed(context, '/home'), child: Text('Home')),
//             TextButton(onPressed: () => Navigator.pushNamed(context, '/schedule'), child: Text('Schedule')),
//             PopupMenuButton<String>(
//               onSelected: (value) {
//                 Navigator.pushNamed(context, value);
//               },
//               itemBuilder: (context) => [
//                 PopupMenuItem(value: '/recording', child: Text('Recordings')),
//                 PopupMenuItem(value: '/presentation', child: Text('Presentation')),
//                 PopupMenuItem(value: '/resume', child: Text('Resume')),
//               ],
//               child: Text('Resources'),
//             ),
//             TextButton(onPressed: () => Navigator.pushNamed(context, '/faq'), child: Text('FAQ')),
//             TextButton(onPressed: () => Navigator.pushNamed(context, '/contact'), child: Text('Contact')),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Whitebox Learning'),
      centerTitle: true,
    );
  }
}
