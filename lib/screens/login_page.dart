import 'package:db_test/components/icon_button.dart';
import 'package:db_test/components/rectangular_button.dart';
import 'package:db_test/components/reusable_input_field.dart';
import 'package:db_test/screens/my_homepage.dart';
import 'package:db_test/screens/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              "WELCOME BACK !",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 50.0),
                            child: Text(
                              "SIGN IN TO CONTINUE",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ReusableInputField(
                            controller: myController,
                            obscureText: false,
                            borderRadius: 10.0,
                            enabledBorderColor: const Color(0XFFC4C4C4),
                            labelColor: Colors.black,
                            hintText: "",
                            height: 50.0,
                            labelText: "Email",
                            hasLabelText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ReusableInputField(
                              controller: myController,
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
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Text("FORGOT YOUR PASSWORD?",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.black38)),
                      ),
                    ),
                    ReusableButton(
                        backgroundColor: Colors.blue,
                        borderColor: Colors.blue,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        height: 50.0,
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepage()),
                          );
                        },
                        text: "LOGIN",
                        textColor: Colors.white,
                        width: double.infinity,
                        borderRadius: BorderRadius.circular(10)),
                    const SizedBox(height: 50.0, width: double.infinity),
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50.0, width: double.infinity),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("DON'T HAVE AN ACCOUNT?",
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
                            "SIGN UP",
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
