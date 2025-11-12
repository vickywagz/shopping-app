import 'package:flutter/material.dart';
import 'package:shopping_app/widget/support_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfef5f1),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "images/headset.png",
                      height: 400,
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Headphone",
                          style: AppWidget.boldTextFieldStyle(),
                        ),
                        const Text(
                          "\$300",
                          style: TextStyle(
                            color: Color(0xFFfd6f3e),
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      "Details",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "The product is very good. It has a 1 year warranty. These headphones are amazing — you can even hear a person who is speaking softly. But be aware of Kate, she speaks very loudly!",
                    ),
                    const SizedBox(height: 40.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFFfd6f3e),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0), // adds extra space at bottom
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
