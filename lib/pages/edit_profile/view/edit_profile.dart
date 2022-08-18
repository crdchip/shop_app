import 'package:flutter/material.dart';
import 'package:shop_app/widgets/buttons/button.dart';
import 'package:shop_app/widgets/form_text/form_text_fiels.dart';


class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController userController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Cancel",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.15,
                      width: size.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profiles3.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -6,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          // color: Colors.black.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.blueAccent,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          SizedBox(
            height: size.height * 0.1,
            child: FormTextFiels(
              text: "John Wiliam",
              icon: Icons.person,
              controller: userController,
              colorIcon: Colors.black,
              colorText: Colors.black,
              colorHint: Colors.black,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
            child: FormTextFiels(
              text: "John.wiliams@gmail.com",
              icon: Icons.email,
              controller: gmailController,
              colorIcon: Colors.black,
              colorText: Colors.black,
              colorHint: Colors.black,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          const FloatButton(text: "Update")
        ],
      ),
    );
  }
}
