import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  String text;

  Homepage({super.key, required this.text});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.text),
      ),
      body: Column(
        children: const [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
