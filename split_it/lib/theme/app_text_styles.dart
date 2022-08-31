import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get infoCardMain;
  TextStyle get infoCardValueGreen;
  TextStyle get infoCardValueRed;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get eventTileTitle;
  TextStyle get eventTileDate;
  TextStyle get eventTileValue;
  TextStyle get eventTilePeople;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  get button => GoogleFonts.inter(
      color: AppTheme.colors.button, fontSize: 16, fontWeight: FontWeight.w400);

  @override
  get title => GoogleFonts.montserrat(
      color: AppTheme.colors.title, fontSize: 40, fontWeight: FontWeight.w700);

  @override
  get appBar => GoogleFonts.montserrat(
      color: AppTheme.colors.tittleAppBar,
      fontSize: 24,
      fontWeight: FontWeight.w700);

  @override
  TextStyle get infoCardMain => GoogleFonts.inter(
      color: AppTheme.colors.infoCardText,
      fontSize: 14,
      fontWeight: FontWeight.w400);

  @override
  TextStyle get infoCardValueGreen => GoogleFonts.inter(
      color: AppTheme.colors.infoCardValueGreen,
      fontSize: 20,
      fontWeight: FontWeight.w600);

  @override
  TextStyle get infoCardValueRed => GoogleFonts.inter(
      color: AppTheme.colors.infoCardValueRed,
      fontSize: 20,
      fontWeight: FontWeight.w600);

  @override
  TextStyle get eventTileDate => GoogleFonts.inter(
      color: AppTheme.colors.eventTileDate,
      fontSize: 12,
      fontWeight: FontWeight.w400);

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
      color: AppTheme.colors.eventTilePeople,
      fontSize: 12,
      fontWeight: FontWeight.w400);

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
      color: AppTheme.colors.eventTileTitle,
      fontSize: 16,
      fontWeight: FontWeight.w600);

  @override
  TextStyle get eventTileValue => GoogleFonts.inter(
      color: AppTheme.colors.eventTileValue,
      fontSize: 14,
      fontWeight: FontWeight.w400);
}
