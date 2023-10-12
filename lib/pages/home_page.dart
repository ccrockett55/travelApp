import 'package:flutter/material.dart';
import 'package:learnflutter/class/item_class.dart';
import 'package:learnflutter/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel The World'),
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                title: 'Travel',
                imagePath: 'images/people.png',
                description: 'Time to travel',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Hotel',
                      imagePath: 'images/hotel3.png',
                      description: 'Luxury Hotels',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Airplane',
                      imagePath: 'images/airplane2.png',
                      description: 'Time to fly',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Insurance',
                imagePath: 'images/loungeman.png',
                description: 'Get your trip insured',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
