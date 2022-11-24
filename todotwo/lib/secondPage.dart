import 'package:flutter/material.dart';
import 'package:todotwo/screen_page.dart';
import 'package:todotwo/threePage.dart';
import 'package:todotwo/widget/customContainer.dart';

import 'widget/customElevatedButton.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
                style: TextStyle(fontSize: 24),
              ),
              sizedBox(),
              Image.asset("assets/image2.jpeg"),
              sizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ScreenPage())));
                    },
                    text: 'Back',
                    icon: Icons.arrow_back,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ThreePage())));
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
