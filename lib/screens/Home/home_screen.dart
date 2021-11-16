import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/Home/Widgets/app_bar.dart';
import 'package:flutter_amazon/screens/Home/Widgets/books_list.dart';
import 'package:flutter_amazon/screens/Home/Widgets/header.dart';
import 'package:flutter_amazon/screens/Home/Widgets/icons_list.dart';
import 'package:flutter_amazon/screens/Home/Widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconList(),
            BuildBookList(),
          ],
        ),
      ),
    );
  }
}
