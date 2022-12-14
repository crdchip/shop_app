import 'package:flutter/material.dart';
import 'package:shop_app/widgets/buttons/button.dart';
import 'package:shop_app/widgets/form_text/form_text_fiels.dart';

// ignore: must_be_immutable
class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backround.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Enter your email and will send you intructions on how to reset it",
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormTextFiels(
                    colorIcon: Colors.white,
                    colorText: Colors.white,
                    colorHint: Colors.white,
                    text: "Email",
                    icon: Icons.email_outlined,
                    controller: emailController,
                  ),
                ],
              ),
            ),
            const FloatButton(text: "Send"),
          ],
        ),
      ),
    );
  }
}
