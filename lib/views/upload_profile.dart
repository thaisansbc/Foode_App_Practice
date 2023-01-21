import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practices_homework/views/login.dart';

class UploadProfile extends StatefulWidget {
  const UploadProfile({super.key});
  static const String routeName = '/UploadProfile';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<UploadProfile> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    // padding: const EdgeInsets.only(left: 20, right: 20),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF43F5E),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.05),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new,
                              color: Colors.white),
                          onPressed: () {
                            print("drawer");
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Fill in your bio',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF09101D),
                          fontSize: 26,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'This data will be displayed in your account profile for security',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF09101D),
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              // padding: const EdgeInsets.only(top: 50),
              margin: const EdgeInsets.only(top: 10),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/paypal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/visa.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/paypal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
