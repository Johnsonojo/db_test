import 'package:db_test/app_database.dart';
import 'package:db_test/components/icon_button.dart';
import 'package:db_test/components/reusable_input_field.dart';
import 'package:db_test/screens/my_homepage.dart';
import 'package:flutter/material.dart';
import 'package:db_test/db_operations.dart';
import 'package:sqflite/sqflite.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late AppDatabase db;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    db = AppDatabase();
    db.initDatabase().whenComplete(() async {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Column(children: [
                      Row(
                        children: [
                          SizedBox(
                            child: IconButton(
                              constraints: const BoxConstraints(),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(0.0),
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Color(0XFF616161),
                                size: 18,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            height: 60.0,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          "WELCOME!",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          "SIGN UP TO CONTINUE",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ReusableInputField(
                              controller: _firstNameController,
                              borderRadius: 10.0,
                              enabledBorderColor: const Color(0XFFC4C4C4),
                              labelColor: Colors.black,
                              hintText: "",
                              height: 50.0,
                              labelText: "First Name",
                              hasLabelText: true,
                              obscureText: false),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ReusableInputField(
                              controller: _lastNameController,
                              borderRadius: 10.0,
                              enabledBorderColor: const Color(0XFFC4C4C4),
                              labelColor: Colors.black,
                              hintText: "",
                              height: 50.0,
                              labelText: "Last Name",
                              hasLabelText: true,
                              obscureText: false),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ReusableInputField(
                              controller: _emailController,
                              borderRadius: 10.0,
                              enabledBorderColor: const Color(0XFFC4C4C4),
                              labelColor: Colors.black,
                              hintText: "",
                              height: 50.0,
                              labelText: "Email",
                              hasLabelText: true,
                              obscureText: false),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30.0, bottom: 40.0),
                          child: ReusableInputField(
                              controller: _passwordController,
                              borderRadius: 10.0,
                              enabledBorderColor: const Color(0XFFC4C4C4),
                              labelColor: Colors.black,
                              hintText: "",
                              height: 50.0,
                              labelText: "Password",
                              hasLabelText: true,
                              obscureText: true),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 65.0,
                      child: ElevatedButton(
                        onPressed: () {
                          var firstName = _firstNameController.text;
                          var lastName = _lastNameController.text;
                          var email = _emailController.text;
                          var password = _passwordController.text;

                          print(firstName +
                              " " +
                              lastName +
                              " " +
                              email +
                              " " +
                              password);
                          // DBOperations(bd).insertRecord(
                          //     firstName, lastName, email, password);
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontSize: 17.0, color: Color(0xFFFAFAFA)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35.0, width: double.infinity),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReusableIconButton(
                            isImageIcon: true,
                            elevation: 4.0,
                            onPressed: () {
                              print("Google button clicked");
                            },
                            iconHeight: 40.0,
                            iconWidth: 40.0,
                            image: 'images/google-logo.png',
                            shape: const CircleBorder(),
                            size: 60.0,
                            color: Colors.white,
                          ),
                          ReusableIconButton(
                            isImageIcon: true,
                            elevation: 4.0,
                            onPressed: () {
                              print("Facebook button clicked");
                            },
                            iconHeight: 40.0,
                            iconWidth: 40.0,
                            image: 'images/facebook-logo.png',
                            shape: const CircleBorder(),
                            size: 60.0,
                            color: Colors.white,
                          ),
                          ReusableIconButton(
                            isImageIcon: true,
                            elevation: 4.0,
                            onPressed: () {
                              print("Apple button clicked");
                            },
                            iconHeight: 40.0,
                            iconWidth: 40.0,
                            image: 'images/apple-logo.png',
                            shape: const CircleBorder(),
                            size: 60.0,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0, width: double.infinity),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("ALREADY HAVE AN ACCOUNT?",
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepage()),
                            );
                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
