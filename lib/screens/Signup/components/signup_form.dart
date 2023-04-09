// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../utils/constants.dart';
import '../../Dashboard/dashboard_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<SignUpForm> {
  bool passwordVisible = false;
  String userName = "";
  String password = "";
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode userNameFocusNode = FocusNode();
  FocusNode userPasswordFocusNode = FocusNode();

  void login(String userName, password) async {
    try {
      if (userName == "") {
        userNameFocusNode.requestFocus();
        Fluttertoast.showToast(
            msg: "Enter User Name",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else if (password == "") {
        userPasswordFocusNode.requestFocus();
        Fluttertoast.showToast(
            msg: "Enter User Password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Response response = await post(
            Uri.parse(
                'http://202.51.74.37:5354/AndroidLogIn/AndroidUserLogInWithoutSchoolCode/'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'username': userName,
              'userpass': password,
              'moduleid': '2',
              'fbscode': '',
              'address1': '',
              'address2': ''
            }));

        if (response.statusCode == 200) {
          //  var data = jsonDecode(response.body.toString());
          Fluttertoast.showToast(
              msg: "Login Success",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);

          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()));
        } else {
          Fluttertoast.showToast(
              msg: "Invalid Username or Password, Try Again",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: userNameController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            focusNode: userNameFocusNode,
            onSaved: (val) => userName = val!,
            validator: (username) {
              if (username == null || username.isEmpty) {
                return "Please enter Username";
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              obscureText: passwordVisible,
              cursorColor: kPrimaryColor,
              focusNode: userPasswordFocusNode,
              onSaved: (val) => password = val!,
              validator: (password) {
                if (password == null || password.isEmpty) {
                  return "Please enter Password";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Password",
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
                suffixIcon: IconButton(
                  padding: const EdgeInsets.all(defaultPadding),
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {
              login(userNameController.text, passwordController.text);
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                )),
            child: Text(
              "LOGIN".toUpperCase(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
