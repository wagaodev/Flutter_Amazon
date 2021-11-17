import 'package:flutter/material.dart';
import 'package:flutter_amazon/utils/constants.dart';

List<Widget> buildDescription() => [
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(Constants.kPadding),
          child: SingleChildScrollView(
            child: Text(
              'The first thing you need to know about the Amazon Alexa app is that it is not a native app. It is a web app that runs on your phone',
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.all(Constants.kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Share'),
              TextButton(
                onPressed: () {},
                child: Text('One Click Purchase'),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constants.kPadding,
                    vertical: 4,
                  ),
                  minimumSize: Size(5, 5),
                  backgroundColor: Colors.deepOrange,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          )),
    ];
