import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true; // Initial state is obscure

  void _togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.indigo, // added app bar background color
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(), // added border
                  filled: true, // added filled background
                  fillColor: Colors.grey[200], // added filled color
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter an email';
                  } else if (!value.contains("@")) {
                    return 'Invalid email';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(), // added border
                  filled: true, // added filled background
                  fillColor: Colors.grey[200], // added filled color
                ),
              ),
              SizedBox(height: 10),

              TextFormField(
                controller: _passwordController,
                obscureText: _isObscure,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a password';
                  } else if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  } else if (!value.contains(RegExp(r'[A-Z]'))) {
                    return 'Password must contain at least one uppercase letter';
                  } else if (!value.contains(RegExp(r'[a-z]'))) {
                    return 'Password must contain at least one lowercase letter';
                  } else if (!value.contains(RegExp(r'[0-9]'))) {
                    return 'Password must contain at least one digit';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: _togglePasswordVisibility,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(), // added border
                  filled: true, // added filled background
                  fillColor: Colors.grey[200], // added filled color
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Account created')),
                    );
                    Navigator.pushNamed(context, '/');
                  }
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo, // added button text color
                  padding: EdgeInsets.all(16), // added button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // added button border radius
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
