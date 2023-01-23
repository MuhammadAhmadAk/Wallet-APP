// ignore_for_file: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings

import 'package:banking_ui/const/images_consts.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
        child: ListTile(
            title: const Text(
              "Uber Eats",
              style: TextStyle(fontFamily: "semiBold", fontSize: 20),
            ),
            subtitle: const Text("Debit Card",
                style: TextStyle(fontFamily: "Regular")),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "-" + "\$33,000.40",
                  style: TextStyle(fontSize: 20, fontFamily: "Bold"),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  dt.hour.toString() + ":" + dt.minute.toString() + " AM",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Bold",
                      color: Colors.grey.shade500),
                ),
              ],
            ),
            leading: const CircleAvatar(
              backgroundImage: AssetImage(transactions),
            )),
      ),
    );
  }
}
