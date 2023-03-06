import 'package:flutter/material.dart';
import 'package:flutter_practice_app/class/item_class.dart';
import 'package:flutter_practice_app/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(kDouble10),
            color: const Color.fromARGB(255, 153, 104, 100),
            width: double.infinity,
            child: Column(children: [
              const SizedBox(
                height: kDouble5,
              ),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('This is a Description'),
              const SizedBox(
                height: kDouble10,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
