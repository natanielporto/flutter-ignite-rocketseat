import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return DashboardModel(send: 100, receive: 20);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return [
      EventModel(
          title: "Churrasco",
          createdAt: DateTime.now(),
          value: 35.00,
          people: 2),
      EventModel(
          title: "Carrasco",
          createdAt: DateTime.now(),
          value: 135.00,
          people: 23),
      EventModel(
          title: "Frutasco",
          createdAt: DateTime.now(),
          value: -35.00,
          people: 3),
      EventModel(
          title: "Chumbrasco",
          createdAt: DateTime.now(),
          value: -3335.00,
          people: 4),
      EventModel(
          title: "Frutasco",
          createdAt: DateTime.now(),
          value: 35.00,
          people: 3),
      EventModel(
          title: "Chumbrasco",
          createdAt: DateTime.now(),
          value: 3335.00,
          people: 4),
    ];
  }
}
