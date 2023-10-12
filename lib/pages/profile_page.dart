import 'package:flutter/material.dart';
import 'package:learnflutter/core/constants.dart';
import 'package:learnflutter/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('images/girl.jpg'),
          ),
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Zana Fetters'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('zana@myemail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('google.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
