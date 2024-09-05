import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../auth_provider.dart';
import '../theme_provider.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(authProvider.userName ?? "Guest"),
            accountEmail: Text(authProvider.userEmail ?? "guest@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50),
            ),
          ),
          SwitchListTile(
            title: Text('Change Theme'),
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.schedule),
          //   title: Text('Schedule'),
          //   onTap: () {
          //     Navigator.pushReplacementNamed(context, '/schedule');
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.record_voice_over),
            title: Text('Recording'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/recording');
            },
          ),
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text('Presentation'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/presentation');
            },
          ),
          
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../auth_provider.dart';

// class DrawerNav extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             accountName: Text(authProvider.userName ?? "Guest"),
//             accountEmail: Text(authProvider.userEmail ?? "guest@example.com"),
//           ),
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text('Home'),
//             onTap: () {
//               Navigator.of(context).pushReplacementNamed('/home');
//             },
//           ),
//           // Other ListTiles...
//           ListTile(
//             leading: authProvider.isAuthenticated ? Icon(Icons.logout) : Icon(Icons.login),
//             title: Text(authProvider.isAuthenticated ? 'Sign Out' : 'Login'),
//             onTap: () {
//               if (authProvider.isAuthenticated) {
//                 authProvider.logout();
//                 Navigator.of(context).pushReplacementNamed('/home');
//               } else {
//                 Navigator.of(context).pushReplacementNamed('/login');
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
