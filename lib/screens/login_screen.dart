// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart';
// import '../auth_provider.dart';
// import 'package:provider/provider.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'MyApp',
//       theme: LoginTheme(
//         // You can customize the theme here if needed
//         titleStyle: Theme.of(context).textTheme.headlineMedium, // Update to headlineMedium
//         bodyStyle: Theme.of(context).textTheme.bodyMedium, // Update to bodyMedium
//         // Update any other TextTheme properties used
//       ),
//       onLogin: (loginData) {
//         return _authenticateUser(context, loginData);
//       },
//       onSignup: (signupData) {
//         return _authenticateUser(context, signupData);
//       },
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacementNamed('/home');
//       },
//       onRecoverPassword: (email) {
//         // Handle password recovery here
//         return null;
//       },
//     );
//   }

//   Future<String?> _authenticateUser(BuildContext context, LoginData data) async {
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     // Add your authentication logic here (e.g., API call)
//     authProvider.login(); // Assuming login is successful
//     return null; // Return error message string if failed
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'MyApp',
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        // Navigate to home screen
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        primaryColor: Colors.teal,
        accentColor: Colors.orange,
        errorColor: Theme.of(context).colorScheme.error,
        titleStyle: TextStyle(
          color: Colors.green,
          fontFamily: 'Quicksand',
          fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize,
        ),
        bodyStyle: TextStyle(
          fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
        ),
        textFieldStyle: TextStyle(
          color: Colors.black,
          fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
        ),
        buttonStyle: TextStyle(
          fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
        ),
      ),
    );
  }

  Future<String?> _authUser(LoginData data) async {
    return Future.delayed(loginTime).then((_) {
      // Add your login logic here
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) async {
    return Future.delayed(loginTime).then((_) {
      // Add your signup logic here
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) async {
    return Future.delayed(loginTime).then((_) {
      // Add your password recovery logic here
      return null;
    });
  }
}
