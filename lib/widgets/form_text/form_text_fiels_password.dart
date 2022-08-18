import 'package:flutter/material.dart';
import 'package:shop_app/widgets/text_fiels_container.dart';

class FormTextFielsPassword extends StatefulWidget {
  const FormTextFielsPassword({
    Key? key,
    required this.passwordController,
    required this.text,
    required this.colorHinttext,
  }) : super(key: key);

  final TextEditingController passwordController;
  final String text;
  final Color colorHinttext;
  @override
  State<FormTextFielsPassword> createState() => _FormTextFielsPasswordState();
}

class _FormTextFielsPasswordState extends State<FormTextFielsPassword> {
  bool iconCheck = false;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextFormField(
        controller: widget.passwordController,
        obscureText: iconCheck ? false : true,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.lock_outline,
            color: Colors.blueAccent.withOpacity(0.4),
          ),
          hintText: widget.text,
          hintStyle: TextStyle(
            color: widget.colorHinttext,
            fontStyle: FontStyle.italic,
          ),
          suffixIcon: IconButton(
            icon: iconCheck
                ? Icon(
                    Icons.visibility,
                    color: Colors.white.withOpacity(0.4),
                  )
                : Icon(
                    Icons.visibility_off,
                    color: Colors.black.withOpacity(0.4),
                  ),
            onPressed: () {
              setState(
                () {
                  iconCheck = !iconCheck;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
