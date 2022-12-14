// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  const InfoCardWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  TextStyle get textStyle => value >= 0
      ? AppTheme.textStyles.infoCardValueGreen
      : AppTheme.textStyles.infoCardValueRed;

  IconDollarType get iconDollarType =>
      value >= 0 ? IconDollarType.receive : IconDollarType.send;

  String get title => value >= 0 ? "A receber" : "A pagar";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppTheme.colors.border),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconDollarWidget(type: iconDollarType),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTheme.textStyles.infoCardMain),
              const SizedBox(height: 4),
              Text("R\$ ${value.toStringAsPrecision(2)}", style: textStyle),
            ],
          ),
        ],
      ),
    );
  }
}
