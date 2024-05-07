import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qwerttt/screens/Login_screen.dart';

import 'Home.dart';

class Signupscreen extends StatefulWidget {
  @override
  SignupscreenPageState createState() => SignupscreenPageState();
}

class SignupscreenPageState extends State<Signupscreen> {
  late String _firstName, _lastName, _email, _password, _phoneNumber;

  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  // ignore: unused_field
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Here you can add your logic to handle form submission
      print(
          'First Name: $_firstName, Last Name: $_lastName, Email: $_email, Password: $_password, Phone Number: $_phoneNumber');
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ));
  }

  void _showAccountAddedSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Account added'),
        duration: Duration(seconds: 5),
      ),
    );
  }

  void _createAccount(BuildContext context) async {
    try {
      UserCredential authResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Upload each image to Firestore and get the download URLs

      // Save user data including image URLs in Firestore
      await _firestore.collection('users').doc(authResult.user!.uid).set({
        'First name': _firstNameController.text,
        'Last name': _lastNameController.text,
        'email': _emailController.text,
        'uid': authResult.user!.uid,
        // Add the image URLs to user data
        // Add other fields as needed
      });

      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } catch (error) {
      print('Error creating account: $error');
      // Handle error here
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "images/back.jpg"), // تأكد من تعديل المسار ليتناسب مع موقع الصورة في مشروعك
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  Image.asset(
                    "images/project.jpg",
                    width: 210,
                    height: 101,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(51)),
                            child: TextFormField(
                              controller: _firstNameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: ' First Name ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your first name';
                                }
                                return null;
                              },
                              onSaved: (value) => _firstName = value!,
                            ),
                          ),
                          SizedBox(height: 11),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(51)),
                            child: TextFormField(
                              controller: _lastNameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: ' Last Name ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                              onSaved: (value) => _lastName = value!,
                            ),
                          ),
                          SizedBox(height: 11),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(51)),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: ' Email ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                              onSaved: (value) => _email = value!,
                            ),
                          ),
                          SizedBox(height: 11),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(51)),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: ' Password ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              onSaved: (value) => _password = value!,
                            ),
                          ),
                          SizedBox(height: 11),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(51)),
                            child: TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: ' Confirm Password ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              onSaved: (value) => _password = value!,
                            ),
                          ),
                          SizedBox(height: 11),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(51)),
                            child: TextFormField(
                              controller: _phoneNumberController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: ' Phone Number ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                              onSaved: (value) => _phoneNumber = value!,
                            ),
                          ),
                          SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
  if (_firstNameController.text.isEmpty ||
      _lastNameController.text.isEmpty ||
      _emailController.text.isEmpty ||
      _passwordController.text.isEmpty ||
      _phoneNumberController.text.isEmpty ||
      _confirmPasswordController.text.isEmpty) {
    _showSnackBar(context, 'All fields are required');
  } else if (_validateForm(context)) {
    _createAccount(context);
    _showAccountAddedSnackBar(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
},

                            child: Container(
                              width: 150,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _validateForm(BuildContext context) {
    if (_passwordController.text.length < 6) {
      _showSnackBar(context, 'Password must be at least 6 characters');
      return false;
    }

    if (!_emailController.text.endsWith('@gmail.com')) {
      _showSnackBar(context, 'Invalid email format (must end with @gmail.com)');
      return false;
    }

    return true;
  }
}
