import 'package:flutter/material.dart';
import 'package:todotwo/secondPage.dart';
import 'package:todotwo/widget/customContainer.dart';

import 'widget/customElevatedButton.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              const CustomContainer(),
              sizedBox(),
              const Text(
                "Neque porro quisquam est qui dolorem ipsum quia dolor sit",
                style: TextStyle(fontSize: 16),
              ),
              sizedBox(),
              Image.asset("assets/image1.jpeg"),
              sizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SecondPage())));
                    },
                    text: 'Next',
                    icon: Icons.skip_next,
                  ),
                ],
              )
            ],
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
