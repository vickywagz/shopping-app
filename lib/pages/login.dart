import 'package:flutter/material.dart';
import 'package:shopping_app/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only( left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/shopping-man.png"),
                Center(
                  child: Text("Sign In", style: AppWidget.semiboldTextFieldStyle()),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Please enter the details below \n                    continue.",
                  style: AppWidget.lightTextFieldStyle(),
                ),
                SizedBox(height: 40.0),
                Text("Email", style: AppWidget.semiboldTextFieldStyle()),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFf4F5F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
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
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "password",
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
