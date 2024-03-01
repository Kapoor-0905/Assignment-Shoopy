import 'package:crezam_task/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Texts
TextStyle normalText({required double fontSize}) => TextStyle(
    color: textColor, fontFamily: 'UrbanistRegular', fontSize: fontSize);
TextStyle boldText({required double fontSize}) =>
    TextStyle(color: textColor, fontFamily: 'UrbanistBold', fontSize: fontSize);
TextStyle mediumText({required double fontSize}) => TextStyle(
    color: textColor, fontFamily: 'UrbanistMedium', fontSize: fontSize);

// headings
const TextStyle heading1 =
    TextStyle(color: textColor, fontFamily: 'UrbanistBold', fontSize: 22);
const TextStyle heading2 =
    TextStyle(color: textColor, fontFamily: 'UrbanistSemiBold', fontSize: 20);
const TextStyle heading3 =
    TextStyle(color: textColor, fontFamily: 'UrbanistMedium', fontSize: 18);

// input decoration
InputDecoration searchBarInput = InputDecoration(
    hintText: 'Search',
    hintStyle: normalText(fontSize: 14),
    border: InputBorder.none);
BoxDecoration searchBar = BoxDecoration(
    color: shadeColor.withOpacity(0.3),
    borderRadius: BorderRadius.circular(20));
