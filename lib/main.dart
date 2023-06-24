import 'package:flutter/material.dart';

import 'chat.dart';

main() => runApp(const WhatsApp());

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  // icon: Icon(Icons.chat),
                  text: 'Chat',
                ),
                Tab(text: 'Status'),
                Tab(
                  // icon: Icon(Icons.call),
                  text: 'Calls',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Chat(),
              Chat(),
              Chat(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.chat),
          ),
        ),
      ),
    );
  }
}
