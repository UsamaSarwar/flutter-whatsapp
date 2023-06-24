import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/id/56/200'),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for Whatsapp call'),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Recent'),
          ),
          for (int i = 100; i < 150; i++)
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/id/$i/200'),
              ),
              title: Text('User $i'),
              subtitle: const Row(
                children: [
                  Icon(
                    Icons.call_made_outlined,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text(' Today 10:21'),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call),
              ),
            ),
        ],
      ),
    );
  }
}
