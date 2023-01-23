import 'package:flutter/material.dart';

class ActionContainer extends StatelessWidget {
  final String title;
  final Color outerContainerColor;
  final Color innerContainerColor;
  final String imagePath;
  final Color imageColor;
  const ActionContainer(
      {super.key,
      required this.imageColor,
      required this.title,
      required this.innerContainerColor,
      required this.imagePath,
      required this.outerContainerColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160,
        width: 120,
        decoration: BoxDecoration(
            color: outerContainerColor,
            borderRadius: BorderRadius.circular(26)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: innerContainerColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                      child: Image.asset(
                    imagePath,
                    color: imageColor,
                    width: 40,
                  ))),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 17, fontFamily: "Bold", color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
