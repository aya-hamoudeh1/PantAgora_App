import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';
import 'package:pantagora_app/pages/profile_page.dart';
import 'package:pantagora_app/widgets/custom_button.dart';
import 'package:pantagora_app/widgets/list_view_home.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_search_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomAppBar(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomSearchTextField(),
              ),
              const ListViewHome(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    " متاجر جوارك :",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      "assets/images/mapp.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "ليس لديك متجر فيزيائي !",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CustomButton(
                    title: "أنشئ بروفايلك لعرض منتجاتك",
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
