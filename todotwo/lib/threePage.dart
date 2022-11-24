import 'package:flutter/material.dart';
import 'package:todotwo/homePage.dart';
import 'package:todotwo/widget/customContainer.dart';

import 'widget/customElevatedButton.dart';

class ThreePage extends StatefulWidget {
  const ThreePage({super.key});

  @override
  State<ThreePage> createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  final TextEditingController _nameController = TextEditingController();
  String name = " ";

  void changeName() {
    setState(() {
      name = _nameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomContainer(),
                sizedBox(),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: const Color(0xffff973f),
                  height: 400,
                  child: Center(
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                          hintText: "Name",
                          enabledBorder: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder()),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      onPressed: () {
                        setState(() {
                          changeName();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Homepage(
                                        text: _nameController.text,
                                      ))));
                        });
                      },
                      icon: Icons.skip_next_rounded,
                      text: 'Next',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox sizedBox() {
    return const SizedBox(
      height: 20,
    );
  }
}
