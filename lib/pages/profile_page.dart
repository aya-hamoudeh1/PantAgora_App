import 'package:flutter/material.dart';
import 'package:pantagora_app/pages/login_page.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static String id = "ProfilePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/Logo/PantAgora_ Logo.png",
                height: 300,
                width: 300,
              ),
              const Text(
                "PantAgora",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 32,
                  fontFamily: "Lobster",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "أنشأ حسابك :",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                hintText: "البريد الالكتروني",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: "كلمة المرور",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(
                title: "إنشاء حساب",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "هل لديك حساب ؟",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      " سجل دخول",
                      style: TextStyle(
                        color: Color(0xffFFB5A2),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
