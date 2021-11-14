import 'package:flutter/material.dart';
import 'package:flutter_amazon/utils/constants.dart';

Widget buildSearchBar() => Padding(
      padding: EdgeInsets.all(2 * Constants.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search a book',
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: Constants.kPadding,
            vertical: 0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2 * Constants.kPadding),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
