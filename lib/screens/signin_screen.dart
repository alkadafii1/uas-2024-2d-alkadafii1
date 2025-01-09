import 'package:flutter/material.dart';
import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword; 
                    });
                  },
                ),
              ),
            ),
             const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                
                },
                child: const Text('Sign In'),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: const Text('or sign in with'),
            ),
            const SizedBox(height: 20),
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
            
                    },
                    icon: Icon(Icons.g_mobiledata, size: 40), 
                  ),
                  IconButton(
                    onPressed: () {
                   
                    },
                    icon: Icon(Icons.facebook, size: 40), 
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
      
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      
                      Navigator.pushNamed(context, '/signUp'); 
                    },
                    child: const Text(
                      'Sign up now',
                      style: TextStyle(
                        color: Colors.blue, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}