import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < 10; i++)
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/$i/200'),
              ),
              title: Text('WhatsApp User $i'),
              subtitle: const Text('What\'s Up! How is it going?'),
              trailing:  Text('10:$i'),
            ),
        ],
      ),
    );
  }
}
