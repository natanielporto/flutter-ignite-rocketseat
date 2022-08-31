import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get button;
  Color get infoCardText;
  Color get infoCardValueGreen;
  Color get infoCardValueRed;
  Color get border;
  Color get borderAddButton;
  Color get tittleAppBar;
  Color get icon;
  Color get iconBackgroundIncomeDark;
  Color get iconBackgroundIncomeLight;
  Color get iconBackgroundOutcomeDark;
  Color get iconBackgroundOutcomeLight;
  Color get eventTileTitle;
  Color get eventTileDate;
  Color get eventTileValue;
  Color get eventTilePeople;
  Color get divider;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundSecondary => const Color(0xFF40B38C);

  @override
  Color get title => const Color(0xFF40B28C);

  @override
  Color get button => const Color(0xFF666666);

  @override
  Color get backgroundPrimary => const Color(0xFFFFFFFF);

  @override
  Color get border => const Color(0xFFDCE0E5);

  @override
  Color get tittleAppBar => const Color(0xFFFFFFFF);

  @override
  Color get borderAddButton => const Color(0xFFFFFFFF);

  @override
  Color get icon => const Color(0xFFF5F5F5);

  @override
  Color get iconBackgroundIncomeDark => const Color(0xFF45CC93);

  @override
  Color get iconBackgroundIncomeLight => const Color(0xFFE9F8F2);

  @override
  Color get infoCardText => const Color(0xFF666666);

  @override
  Color get infoCardValueGreen => const Color(0xFF40B28C);

  @override
  Color get infoCardValueRed => const Color(0xFFE83F5B);

  @override
  Color get iconBackgroundOutcomeDark => const Color(0xFFFDECEF);

  @override
  Color get iconBackgroundOutcomeLight => const Color(0xFFFDECEF);

  @override
  Color get eventTileDate => const Color(0xFF666666);

  @override
  Color get eventTilePeople => const Color(0xFFA4B2AE);

  @override
  Color get eventTileTitle => const Color(0xFF455250);

  @override
  Color get eventTileValue => const Color(0xFF666666);

  @override
  Color get divider => const Color(0xFF666666);
}
