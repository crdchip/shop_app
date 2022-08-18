import 'package:flutter/material.dart';
import 'package:shop_app/widgets/text_fiels_container.dart';

class FormTextFiels extends StatelessWidget {
  const FormTextFiels({
    Key? key,
    required this.text,
    required this.icon,
    required this.controller,
    required this.colorHint,
    required this.colorText,
    required this.colorIcon,
  }) : super(key: key);
  final TextEditingController controller;
  final String text;
  final IconData icon;
  final Color colorText;
  final Color colorIcon;
  final Color colorHint;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
        style: TextStyle(
          color: colorText,
          fontStyle: FontStyle.italic,
        ),
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: colorIcon,
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: colorHint,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
