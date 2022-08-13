import 'package:flutter/material.dart';
import 'package:shop_app/widgets/text_fiels_container.dart';

class FormTextFielsPassword extends StatefulWidget {
  const FormTextFielsPassword({
    Key? key,
    required this.passwordController,
    required this.text,
  }) : super(key: key);

  final TextEditingController passwordController;
  final String text;
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
            color: Colors.grey[300],
          ),
          hintText: widget.text,
          hintStyle: const TextStyle(
            color: Colors.white,
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
