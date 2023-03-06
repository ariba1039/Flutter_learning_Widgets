import 'package:flutter/material.dart';
import 'package:flutter_practice_app/widget/card_widget.dart';

import '../class/item_class.dart';
// import 'package:flutter_practice_app/core/constants.dart' ;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ariba hussain'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
                box: ItemClass(
              title: 'Travel',
              imagePath: 'images/travel.png',
            )),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Yeah',
                      imagePath: 'images/yeah.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Rockets',
                      imagePath: 'images/rockets.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Rockets',
                imagePath: 'images/rockets.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
