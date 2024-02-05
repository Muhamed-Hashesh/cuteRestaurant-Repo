import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const notificationColor = Color(0XFFFFFFF2);
const mintGreenColor = Color(0XFF84A59D);
const buttonColor = Color(0XFFF28482);
const tasteButton = Color(0XFFF7EDE2);
const textColor = Color(0XFF3D405B);
const iconsBG1 = Color(0XFFF5CAC3);
const shadowColor = Color(0XFFF2CC8F);
const textStyle1black = TextStyle(fontSize: 32, color: textColor);
const textStyle1light = TextStyle(fontSize: 32, color: Colors.white);
const titlesTextStyle = TextStyle(fontSize: 24, color: textColor);
const cardTitleTextStyle = TextStyle(fontSize: 14, color: textColor);
var descriptionBlackTextStyle = GoogleFonts.unbounded(
    fontWeight: FontWeight.w300, color: textColor, fontSize: 18);
var descriptionLightTextStyle = GoogleFonts.unbounded(
    fontWeight: FontWeight.w300, color: const Color(0XFFF4F1DE), fontSize: 18);

List<BoxShadow> boxShadowList = [
  BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 40,
    color: shadowColor.withOpacity(0.4),
  )
];
