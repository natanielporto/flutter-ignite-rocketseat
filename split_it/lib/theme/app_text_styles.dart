import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  get button => GoogleFonts.inter(
      color: AppTheme.colors.button, fontSize: 16, fontWeight: FontWeight.w400);

  @override
  get title => GoogleFonts.montserrat(
      color: AppTheme.colors.title, fontSize: 40, fontWeight: FontWeight.w700);
}
