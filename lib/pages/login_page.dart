import 'package:flutter/material.dart';
import 'package:pantagora_app/pages/profile_page.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/images/Logo/PantAgora_ Logo.png",
              width: 300,
              height: 300,
            ),
            const Text(
              "PantAgora",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 32,
                fontFamily: "Lobster",
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Row(
              children: [
                Text(
                  "تسجيل الدخول :",
                  style: TextStyle(
                    fontSize: 24,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: "البريد الابكتروني",
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
              title: "تسجيل الدخول",
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ليس لديك حساب ؟  ",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: const Text(
                    " أنشأ حساب",
                    style: TextStyle(
                      color: Color(0xffFFB5A2),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
