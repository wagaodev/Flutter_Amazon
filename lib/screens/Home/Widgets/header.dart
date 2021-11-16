import 'package:flutter/material.dart';
import 'package:flutter_amazon/utils/constants.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: EdgeInsets.only(
            left: 2 * Constants.kPadding, top: Constants.kPadding),
        child: Text(
          'Bookshelf',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 2 * Constants.kPadding, vertical: Constants.kPadding),
        child: Text(
          'Welcome Flutter Maps',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    ];
