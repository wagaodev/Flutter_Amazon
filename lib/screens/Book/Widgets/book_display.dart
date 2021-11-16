import 'package:flutter/material.dart';
import 'package:flutter_amazon/models/book_model.dart';
import 'package:flutter_amazon/utils/constants.dart';

List<Widget> buildBookDisplay({required BookModel book}) => [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            book.secondImage,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(Constants.kPadding),
        child: Text(
          book.title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];
