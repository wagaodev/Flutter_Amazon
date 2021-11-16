import 'package:flutter/material.dart';
import 'package:flutter_amazon/models/book_model.dart';
import 'package:flutter_amazon/screens/Book/book_screen.dart';
import 'package:flutter_amazon/utils/constants.dart';

final List<BookModel> books = BookModel.books;

class BuildBookList extends StatelessWidget {
  const BuildBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Constants.kPadding,
                horizontal: Constants.kPadding * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Sellers',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: Constants.kPadding,
                    ),
                    backgroundColor: Colors.deepOrange,
                    primary: Colors.white,
                    minimumSize: Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: Constants.kPadding * 2,
                    right: Constants.kPadding,
                    left: index == 0 ? Constants.kPadding : 0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookScreen(
                            book: books[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              books[index].image,
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].title,
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
