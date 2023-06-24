import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/calls.dart';
import 'package:flutter_whatsapp/status.dart';

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
        initialIndex: 2,
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
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              Chat(),
              Status(),
              Calls(),
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
