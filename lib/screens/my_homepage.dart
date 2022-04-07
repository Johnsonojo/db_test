import 'package:db_test/app_database.dart';
import 'package:db_test/components/rectangular_button.dart';
import 'package:db_test/db_operations.dart';
import 'package:db_test/screens/login_page.dart';
import 'package:db_test/screens/signup_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    testDB();
    super.initState();
  }

  void testDB() async {
    var database = await AppDatabase().initDatabase();

    var items = DBOperations(database)
        .users()
        .then((value) => print("USERS " + value.length.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meditation App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60.0),
                    const Image(
                      image: AssetImage("images/meditation.png"),
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("Welcome", style: TextStyle(fontSize: 30)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
                      child: Text(
                          "Please login or sign up to continue using the app",
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      child: ReusableButton(
                        backgroundColor: Colors.blue,
                        borderColor: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        text: 'LOGIN',
                        textColor: Colors.white,
                        fontSize: 16.0,
                        height: 55.0,
                        width: double.infinity,
                        elevation: 30.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                      child: ReusableButton(
                        backgroundColor: Colors.white,
                        borderColor: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        text: 'SIGN UP',
                        textColor: Colors.blue,
                        fontSize: 16.0,
                        height: 55.0,
                        width: double.infinity,
                        elevation: 30.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()),
                          );
                        },
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
