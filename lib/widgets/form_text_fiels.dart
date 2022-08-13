import 'package:flutter/material.dart';
import 'package:shop_app/widgets/text_fiels_container.dart';

class FormTextFiels extends StatelessWidget {
  const FormTextFiels(
      {Key? key,
      required this.text,
      required this.icon,
      required this.controller})
      : super(key: key);
  final TextEditingController controller;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
