import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';

class GroceryStoresScreen extends StatelessWidget {
  final List<Map<String, String>> stores = [
    {'name': 'سوبرماركت الأمل', 'distance': '0.5 كم'},
    {'name': 'بقالة الخير', 'distance': '0.8 كم'},
    {'name': 'متجر الفواكه الطازجة', 'distance': '1.2 كم'},
    {'name': 'متجر المدينة', 'distance': '1.7 كم'},
    {'name': 'سوبرماركت الوفاء', 'distance': '2.0 كم'},
  ];

  GroceryStoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'متاجر البقالة القريبة',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: stores.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: const Icon(Icons.store, color: Colors.green),
              title: Text(
                stores[index]['name']!,
                style: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              subtitle: Text(
                'المسافة: ${stores[index]['distance']}',
                style: const TextStyle(
                  color: Color(0xffFFB5A2),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
