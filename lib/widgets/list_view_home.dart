import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';
import 'package:pantagora_app/pages/grocery_store_page.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GroceryStoresScreen(),
          ),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height *
            .25, // زيادة الارتفاع لاستيعاب النص
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 16),
            _buildCategoryCard(
              "assets/images/Categories/𝒇𝒐𝒍𝒍𝒐𝒘.jpg",
              "متاجر الورود",
            ),
            _buildCategoryCard(
              "assets/images/Categories/The Grocery Store .jpg",
              "متاجر البقالة",
            ),
            _buildCategoryCard(
              "assets/images/Categories/plant.jpg",
              "متاجر الزراعة",
            ),
            _buildCategoryCard(
              "assets/images/Categories/pharmecy.jpg",
              "الصيدليات",
            ),
            _buildCategoryCard(
              "assets/images/Categories/makeup.jpg",
              "متاجر المكياج",
            ),
            _buildCategoryCard(
              "assets/images/Categories/games.jpg",
              "متاجر الألعاب",
            ),
            _buildCategoryCard(
              "assets/images/Categories/clothes.jpg",
              "متاجر الملابس",
            ),
            _buildCategoryCard(
              "assets/images/Categories/CAR .jpg",
              "معارض السيارات",
            ),
            _buildCategoryCard(
              "assets/images/Categories/bookstore.jpg",
              "المكتبات",
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String imagePath, String title) {
    return Container(
      width: 120, // عرض ثابت لكل كارت
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFB5A2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
