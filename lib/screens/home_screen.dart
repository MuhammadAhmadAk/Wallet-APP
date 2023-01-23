// ignore_for_file: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
import 'package:banking_ui/const/images_consts.dart';
import 'package:banking_ui/widgets/action_button.dart';
import 'package:banking_ui/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(profileImage),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey Dear',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                        fontFamily: "semiBold"),
                  ),
                  const Text("Muhammad Ahmad",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Bold",
                          fontSize: 17))
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Image.asset(
                topIcons,
                width: 20,
                color: Colors.pink[100],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            width: 350.4,
            height: 250.5,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFEE60AC), Color(0xFFFBC6BD)],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Your Balance",
                        style: TextStyle(
                            fontFamily: "Bold",
                            fontSize: 15,
                            color: Colors.white60),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("\$100000.00",
                          style: TextStyle(
                              fontSize: 35,
                              fontFamily: "Bold",
                              color: Colors.white)),
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "income",
                                style: TextStyle(
                                    fontFamily: "Bold",
                                    fontSize: 15,
                                    color: Colors.white60),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("\$1,49500",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Bold",
                                      color: Colors.white)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Outcome",
                                style: TextStyle(
                                    fontFamily: "Bold",
                                    fontSize: 15,
                                    color: Colors.white60),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("\$45000",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Bold",
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ActionContainer(
              title: "Send",
              innerContainerColor: Color.fromARGB(255, 134, 183, 223),
              imagePath: telegramIcon,
              outerContainerColor: Colors.blue,
              imageColor: Colors.white,
            ),
            ActionContainer(
              title: "Request",
              innerContainerColor: Color(0xffffbce7),
              imagePath: requestIcon,
              outerContainerColor: Color(0xffffaee1),
              imageColor: Colors.white,
            ),
            ActionContainer(
              title: "More",
              innerContainerColor: Color(0xffc2b7fe),
              imagePath: moreIcon,
              outerContainerColor: Color(0xffb1a1ff),
              imageColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(13.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Transactions",
                style: TextStyle(fontSize: 20, fontFamily: "Bold"),
              )),
        ),
        const TransactionList(),
        const TransactionList()
      ],
    )));
  }
}
