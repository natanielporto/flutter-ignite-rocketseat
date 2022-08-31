import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:split_it/modules/home/widgets/info_card_widget.dart';

class AppBarBottom extends StatefulWidget {
  const AppBarBottom({Key? key}) : super(key: key);

  @override
  State<AppBarBottom> createState() => _AppBarBottomState();
}

class _AppBarBottomState extends State<AppBarBottom> {
  final controller = AppBarController();

  @override
  void initState() {
    controller.getDashboard(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (controller.state.runtimeType) {
      case AppBarStateLoading:
        {
          return const CircularProgressIndicator();
        }
      case AppBarStateSuccess:
        {
          final dashboard = (controller.state as AppBarStateSuccess).dashboard;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoCardWidget(value: dashboard.receive),
              InfoCardWidget(value: -dashboard.send),
            ],
          );
        }
      case AppBarStateError:
        {
          final message = (controller.state as AppBarStateError).message;
          return Text(message);
        }
      default:
        return Container();
    }
  }
}
