import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';
import 'package:pantagora_app/pages/search_history_page.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "ابحث عن متجر/ منتج",
        hintStyle: const TextStyle(
          color: Color(0xffFFB5A2),
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              Icons.qr_code_scanner_outlined,
              color: kPrimaryColor,
            ),
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: DataSearch(),
            );
          },
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              Icons.search,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // Action for AppBar
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.clear,
          color: kPrimaryColor,
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // Icon Leading
    return IconButton(
      onPressed: () {
        close(context, query);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Search result
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show what someone searches for something
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Container(
            alignment: Alignment.centerRight,
            child: const Text(
              "عمليات بحث سابقة :",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const Expanded(
          child: SearchHistoryPage(),
        ),
      ],
    );
  }
}
