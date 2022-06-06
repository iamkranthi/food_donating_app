import 'package:clay_containers/clay_containers.dart';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData logIcon;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText, required this.logIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      borderRadius: 4,
      color: Colors.white,
      depth: 20,
      spread: 2,
      emboss: true,
      width: 355,
      child: Column(
        children: [
           Icon(logIcon, size: 32),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
