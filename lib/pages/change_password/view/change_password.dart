import 'package:flutter/material.dart';
import 'package:shop_app/widgets/buttons/button.dart';
import 'package:shop_app/widgets/form_text/form_text_fiels_password.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController passController = TextEditingController();
  final TextEditingController newpassController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Change Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FormTextFielsPassword(
                colorHinttext: Colors.black.withOpacity(0.4),
                passwordController: passController,
                text: "Current Password",
              ),
              FormTextFielsPassword(
                colorHinttext: Colors.black.withOpacity(0.4),
                passwordController: passController,
                text: "New Password",
              ),
              FormTextFielsPassword(
                colorHinttext: Colors.black.withOpacity(0.4),
                passwordController: passController,
                text: "Confirm Password",
              ),
              const SizedBox(height: 25),
              const FloatButton(text: "Update"),
            ],
          ),
        ),
      ),
    );
  }
}
