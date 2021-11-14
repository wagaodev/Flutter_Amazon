import 'package:flutter/material.dart';
import 'package:flutter_amazon/utils/constants.dart';

Widget buildSearchBar() => Padding(
      padding: EdgeInsets.all(2 * Constants.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search a book',
        ),
      ),
    );
