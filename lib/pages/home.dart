import 'package:flutter/material.dart';
import 'package:shopping_app/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hey, Victory", style: AppWidget.boldTextFieldStyle()),
            Text(
              "Good Morning",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
