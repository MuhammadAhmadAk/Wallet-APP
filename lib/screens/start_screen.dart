import 'package:banking_ui/const/images_consts.dart';
import 'package:banking_ui/screens/home.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.red[200],
            focusColor: Colors.pink[100],
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            child: const Text(
              'Next',
              style: TextStyle(fontFamily: "Bold"),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: 'semiBold'),
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  homeStartImage3,
                  height: 450,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                  child: Text(
                    "The Future of Banking is Here !",
                    style: TextStyle(
                        fontSize: 45, fontFamily: "semiBold", letterSpacing: 0),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
