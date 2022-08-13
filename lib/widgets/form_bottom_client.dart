import 'package:flutter/material.dart';

class FormBottomClient extends StatelessWidget {
  const FormBottomClient({
    Key? key,
    required this.size,
    required this.child,
  }) : super(key: key);

  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: size.height * 0.1,
      bottom: 0,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [child],
      ),
    );
  }
}
