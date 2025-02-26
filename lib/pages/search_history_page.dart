import 'package:flutter/material.dart';

class SearchHistoryPage extends StatelessWidget {
  const SearchHistoryPage({super.key});

  final List<String> searchHistory = const [
    "تفاح أحمر",
    "حليب قليل الدسم",
    "خبز عربي",
    "شوكولاتة دارك 70%",
    "زيت زيتون بكر ممتاز"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: searchHistory.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(
                      Icons.history,
                      color: Color(0xffFF7443),
                    ),
                    title: Text(
                      searchHistory[index],
                      style: const TextStyle(
                        color: Color(0xffFF9D82),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
