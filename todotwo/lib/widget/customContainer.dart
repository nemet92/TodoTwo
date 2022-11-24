import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffff973f),
          borderRadius: BorderRadius.all(Radius.circular(24))),
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      child: const Text(
        "To Do",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
