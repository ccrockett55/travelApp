import 'package:flutter/material.dart';
import 'package:learnflutter/class/item_class.dart';
import 'package:learnflutter/core/constants.dart';
import 'package:learnflutter/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DescriptionPage(box: box,);
          },
        ));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(box.description, style: const TextStyle(fontSize: 19)),
              const SizedBox(height: kDouble10),
            ],
          ),
        ),
      ),
    );
  }
}
