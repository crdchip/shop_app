import 'package:flutter/material.dart';
import 'package:shop_app/pages/login/view/login_page.dart';
import 'package:shop_app/widgets/buttons/button.dart';
import 'package:shop_app/widgets/form_text/form_text_fiels.dart';
import 'package:shop_app/widgets/form_text/form_text_fiels_password.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
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
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profiles0.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 25,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/backround.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FormTextFiels(
              text: "Name",
              icon: Icons.person,
              controller: nameController,
              colorIcon: Colors.white,
              colorText: Colors.white,
              colorHint: Colors.white,
            ),
            FormTextFiels(
              colorIcon: Colors.white,
              colorText: Colors.white,
              colorHint: Colors.white,
              text: "Email",
              icon: Icons.email_outlined,
              controller: emailController,
            ),
            FormTextFielsPassword(
              colorHinttext: Colors.white,
              passwordController: passController,
              text: "Password",
            ),
            FormTextFielsPassword(
              colorHinttext: Colors.white,
              text: "Confirm Password",
              passwordController: repassController,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            const FloatButton(text: "Register"),
            SizedBox(
              height: size.height * 0.1,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: RichText(
                text: const TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
