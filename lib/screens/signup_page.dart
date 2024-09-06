import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _zipController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  String _countryCode = '+1-US';
  String _message = '';
  bool _loading = false;
  String _responseStatus = '';

  List<String> countries = [
    '+1-US',
    '+44-UK',
    '+91-IN'
  ]; // Add more country codes as needed

  void _handleCountryChange(String? selectedValue) {
    if (selectedValue != null) {
      setState(() {
        _countryCode = selectedValue;
      });
    }
  }

  void _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _loading = true;
      });

      final correctCountryCode = _countryCode.replaceAll(RegExp(r'[^\+\d]'),
          ''); // Removes any non-numeric characters except '+'

      try {
        // Simulate API request
        await Future.delayed(Duration(seconds: 2));

        setState(() {
          _responseStatus = 'success';
          _message = 'Registration successful';
        });
      } catch (error) {
        setState(() {
          _responseStatus = 'error';
          _message = 'An error occurred during registration';
        });
      } finally {
        setState(() {
          _loading = false;
        });
      }

      // Clear form fields
      _usernameController.clear();
      _emailController.clear();
      _phoneController.clear();
      _passwordController.clear();
      _addressController.clear();
      _zipController.clear();
    }
  }

  void _handleInputFocus() {
    setState(() {
      _message = '';
    });
  }

  void _handleCloseMessage() {
    setState(() {
      _message = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Welcome.',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'We exist to make learning easier. Create your account.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label: Text('Sign Up with Google'),
                  onPressed: () {},
                ),
                SizedBox(height: 24),
                Text(
                  'Or, Sign Up with email',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                  onTap: _handleInputFocus,
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: DropdownButtonFormField<String>(
                        value: _countryCode,
                        items: countries.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: _handleCountryChange,
                        decoration: InputDecoration(
                          labelText: 'Country Code *',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select a country code';
                          }
                          return null;
                        },
                        onTap: _handleInputFocus,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone *',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          } else if (value.length < 9 || value.length > 13) {
                            return 'Please enter a valid phone number';
                          }
                          return null;
                        },
                        onTap: _handleInputFocus,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    } else if (!RegExp(
                            r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  onTap: _handleInputFocus,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (!RegExp(
                            r'(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}')
                        .hasMatch(value)) {
                      return 'Password must be at least 8 characters long and include uppercase, lowercase, number, and special character';
                    }
                    return null;
                  },
                  onTap: _handleInputFocus,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Address *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                  onTap: _handleInputFocus,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _zipController,
                  decoration: InputDecoration(
                    labelText: 'Zip *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your zip code';
                    }
                    return null;
                  },
                  onTap: _handleInputFocus,
                ),
                SizedBox(height: 24),
                if (_message.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            _message,
                            style: TextStyle(
                              color: _responseStatus == 'success'
                                  ? Colors.green
                                  : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: _handleCloseMessage,
                        ),
                      ],
                    ),
                  ),
                ElevatedButton(
                  onPressed: _loading ? null : _handleSubmit,
                  child: _loading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
