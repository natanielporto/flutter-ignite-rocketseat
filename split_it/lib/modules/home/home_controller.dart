import 'package:flutter/cupertino.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';

class HomeController {
  late HomeRepository repository;
  Function(HomeState state)? onListen;

  HomeState state = HomeStateEmpty();

  HomeController({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  getEvents(VoidCallback onUpdate) async {
    state = HomeStateLoading();
    update();

    try {
      final response = await repository.getEvents();
      state = HomeStateSuccess(events: response);
      update();
    } catch (e) {
      state = HomeStateError(message: e.toString());
    }

    onUpdate();
  }

  void update() {
    if (onListen != null) {
      onListen!(state);
    }
  }

  void listener(Function(HomeState state) onChange) {
    onListen = onChange;
  }
}
