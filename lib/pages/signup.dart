import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login.dart';
import 'package:shopping_app/widget/support_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? name, email, password;
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController mailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/shopping-man.png"),
                  Center(
                    child: Text(
                      "Sign Up",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Please enter the details below \n                    continue.",
                    style: AppWidget.lightTextFieldStyle(),
                  ),
                  SizedBox(height: 40.0),
                  Text("Name", style: AppWidget.semiboldTextFieldStyle()),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFf4F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter your Name';
                        }
                        return null;
                      },
                      controller: namecontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text("Email", style: AppWidget.semiboldTextFieldStyle()),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFf4F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter your Email';
                        }
                        return null;
                      },
                      controller: mailcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text("Password", style: AppWidget.semiboldTextFieldStyle()),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFf4F5F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter your Password';
                        }
                        return null;
                      },
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "password",
                      ),
                    ),
                  ),

                  SizedBox(height: 30.0),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: AppWidget.lightTextFieldStyle(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
