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


// import 'package:flutter/material.dart';
// import 'package:your_project_name/widgets/loading_indicator.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _loading = false;
//   String _message = '';
//   String _responseStatus = '';

//   Future<void> _handleSubmit() async {
//     if (_loading) return;

//     setState(() {
//       _loading = true;
//     });

//     final formData = {
//       'username': _emailController.text,
//       'password': _passwordController.text,
//     };

//     try {
//       final response = await http.post(
//         Uri.parse('YOUR_API_URL/login'), // Replace with your API URL
//         headers: {'Content-Type': 'application/x-www-form-urlencoded'},
//         body: formData,
//       );

//       final data = json.decode(response.body);

//       if (response.statusCode == 200) {
//         setState(() {
//           _message = data['message'] ?? 'Login successful!';
//           _responseStatus = 'success';
//         });
//         // Add your token handling logic here
//       } else {
//         setState(() {
//           _responseStatus = 'error';
//           _message = data['detail'] ?? 'Failed to login';
//         });
//       }
//     } catch (error) {
//       setState(() {
//         _responseStatus = 'error';
//         _message = 'An error occurred during login';
//       });
//     } finally {
//       setState(() {
//         _loading = false;
//         _emailController.clear();
//         _passwordController.clear();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Text(
//               'Welcome back!',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextFormField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: 'Email Address'),
//             ),
//             const SizedBox(height: 16),
//             TextFormField(
//               controller: _passwordController,
//               decoration: const InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             const SizedBox(height: 16),
//             if (_loading)
//               const LoadingIndicator()
//             else
//               ElevatedButton(
//                 onPressed: _handleSubmit,
//                 child: const Text('Login'),
//               ),
//             if (_message.isNotEmpty)
//               Container(
//                 margin: const EdgeInsets.only(top: 16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: _responseStatus == 'success'
//                       ? Colors.green[100]
//                       : Colors.red[100],
//                   border: Border.all(
//                     color: _responseStatus == 'success'
//                         ? Colors.green
//                         : Colors.red,
//                   ),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       _message,
//                       style: TextStyle(
//                         color: _responseStatus == 'success'
//                             ? Colors.green
//                             : Colors.red,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.close),
//                       onPressed: () {
//                         setState(() {
//                           _message = '';
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
