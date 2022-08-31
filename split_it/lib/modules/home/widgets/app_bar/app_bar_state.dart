// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:split_it/modules/home/models/dashboard_model.dart';

abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateSuccess extends AppBarState {
  DashboardModel dashboard;
  AppBarStateSuccess({
    required this.dashboard,
  });
}

class AppBarStateError extends AppBarState {
  String message;
  AppBarStateError({
    required this.message,
  });
}

class AppBarStateLoading extends AppBarState {}
