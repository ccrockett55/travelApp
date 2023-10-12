import 'package:flutter/material.dart';
import 'package:learnflutter/class/item_class.dart';
import 'package:learnflutter/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizedCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),

/*       leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
         icon: const Icon(Icons.dangerous),*/
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Snakbar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizedCustom = 25;
                      });
                    },
                    child: const Text('Small Text'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizedCustom = 35;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xffC6B79B),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Medium Text'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizedCustom = 45;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2F2440),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Large Text'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizedCustom = 200;
                      });
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xffba0f30),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Huge Text'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizedCustom, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                baconDesc,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: const Text(
                  baconDesc,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
