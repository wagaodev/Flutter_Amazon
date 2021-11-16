import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/Book/Widgets/book_display.dart';
import 'package:flutter_amazon/utils/constants.dart';

class BookScreen extends StatefulWidget {
  BookScreen({required this.book});
  final BookModel book;

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black87,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(Constants.kPadding),
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Constants.kPadding * 4,
            ),
            child: Column(
              children: [
                ...buildBookDisplay(book: widget.book),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
