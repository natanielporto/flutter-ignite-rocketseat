// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:split_it/shared/models/event_model.dart';

abstract class HomeState {}

class HomeStateEmpty extends HomeState {}

class HomeStateSuccess extends HomeState {
  List<EventModel> events;
  HomeStateSuccess({
    required this.events,
  });
}

class HomeStateError extends HomeState {
  String message;
  HomeStateError({
    required this.message,
  });
}

class HomeStateLoading extends HomeState {}
