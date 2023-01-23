import 'package:banking_ui/controller/home_controller.dart';
import 'package:banking_ui/screens/home_screen.dart';
import 'package:banking_ui/screens/profile.dart';
import 'package:banking_ui/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItems = const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: "HOME"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.wallet,
            size: 30,
          ),
          label: "WALLET"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 30,
          ),
          label: "PROFILE"),
    ];
    var navbarBody = [
      const HomeScreen(),
      const WalletScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.navIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.pink,
            backgroundColor: Colors.white,
            elevation: 1,
            selectedFontSize: 13,
            selectedLabelStyle:
                const TextStyle(fontFamily: "Regular", color: Colors.black),
            items: navbarItems,
            onTap: (value) {
              controller.navIndex.value = value;
            }),
      ),
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navbarBody.elementAt(controller.navIndex.value),
            ),
          )
        ],
      ),
    );
  }
}
