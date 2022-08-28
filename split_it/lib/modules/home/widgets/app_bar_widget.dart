// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;

  AppBarWidget({
    Key? key,
    required this.user,
    required this.onTapAddButton,
  }) : super(
            key: key,
            child: Container(
              height: 250,
              color: AppTheme.colors.backgroundSecondary,
              child: Padding(
                padding: const EdgeInsets.only(top: 62),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(user.photoUrl!),
                  ),
                  title: Text(user.name!, style: AppTheme.textStyles.appBar),
                  trailing: AddButtonWidget(
                    onTap: onTapAddButton,
                  ),
                ),
              ),
            ),
            preferredSize: const Size.fromHeight(250));
}
