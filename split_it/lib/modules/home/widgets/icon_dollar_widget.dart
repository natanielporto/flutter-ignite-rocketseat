import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;
  const IconDollarWidget({Key? key, required this.type}) : super(key: key);

  String get pathImage =>
      "assets/images/money${type == IconDollarType.receive ? 'in' : 'out'}.png";

  Color get backgroundColor => type == IconDollarType.receive
      ? AppTheme.colors.iconBackgroundIncomeLight
      : AppTheme.colors.iconBackgroundOutcomeLight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 48,
      height: 48,
      child: Center(
        child: Image.asset(pathImage, width: 32, height: 32),
      ),
    );
  }
}
