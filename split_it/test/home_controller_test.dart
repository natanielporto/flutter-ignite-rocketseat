import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late HomeController controller;
  late HomeRepository repository;

  setUp(() {
    repository = HomeRepositoryMock();
    controller = HomeController(repository: repository);
  });

  test("Test GetEvent - Success", () async {
    expect(controller.state, isInstanceOf<HomeStateEmpty>());
    final states = <HomeState>[];
    controller.listener((state) => states.add(state));

    when(repository.getEvents).thenAnswer((_) async => [
          EventModel(
              title: "title", createdAt: DateTime.now(), value: 50, people: 3)
        ]);

    await controller.getEvents(() {});
    expect(states[0], isInstanceOf<HomeStateLoading>());
    expect(states[1], isInstanceOf<HomeStateSuccess>());
    expect(states.length, 2);
  });

  test("Test GetEvent - Error", () async {
    expect(controller.state, isInstanceOf<HomeStateEmpty>());
    final states = <HomeState>[];
    controller.listener((state) => states.add(state));

    when(repository.getEvents).thenThrow("Error test.");

    await controller.getEvents(() {});
    expect(states[0], isInstanceOf<HomeStateLoading>());
    expect(states[1], isInstanceOf<HomeStateError>());
    expect((states[1] as HomeStateError).message, "Error test.");
    expect(states.length, 2);
  });
}
