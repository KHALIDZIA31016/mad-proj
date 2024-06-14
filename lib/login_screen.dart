import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        title: Text('Login'),
        backgroundColor: Colors.black, // changed app bar background color to black
      ),
      backgroundColor: Colors.black, // added black background to the scaffold
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter an email';
                  } else if (!value.contains("@")) {
                    return 'Invalid email';
                  } else {
                    return null;
                  }
                },
                controller: _emailController,
                style: TextStyle(color: Colors.white), // added white text color
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white), // added white label color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // added border radius
                    borderSide: BorderSide(color: Colors.grey), // added grey border color
                  ),
                  filled: true,
                  fillColor: Colors.grey[800], // changed filled color to dark grey
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
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
                controller: _passwordController,
                obscureText: _isObscure,
                style: TextStyle(color: Colors.white), // added white text color
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white), // added white label color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // added border radius
                    borderSide: BorderSide(color: Colors.grey), // added grey border color
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: _togglePasswordVisibility,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey[800], // changed filled color to dark grey
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('LoggedIn Successfuly')),
                    );
                    Navigator.pushNamed(context, '/add');
                  }
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple, // changed button text color to white
                  padding: EdgeInsets.all(16), // added button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // added button border radius
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Sign Up'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.deepPurple, // changed button text color to deep purple
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
