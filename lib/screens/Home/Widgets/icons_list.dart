import 'package:flutter/material.dart';
import 'package:flutter_amazon/models/icon_model.dart';
import 'package:flutter_amazon/utils/constants.dart';

final List<IconModel> headerImages = IconModel.icons;

Widget buildIconList() => Padding(
      padding: EdgeInsets.only(bottom: Constants.kPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            headerImages.length,
            (index) => Container(
              width: 100,
              child: Column(
                children: [
                  Image.asset(
                    headerImages[index].icon,
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    headerImages[index].title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
