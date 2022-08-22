import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      Future.delayed(const Duration(seconds: 4));
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
      Navigator.pushReplacementNamed(context, '/error');
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Opacity(
                    opacity: 0.2,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/rec-dir.png",
                          width: 198,
                          height: 98,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Opacity(
                    opacity: 0.2,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/rec-dir.png",
                          width: 114,
                          height: 54,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/logo.png", width: 128, height: 112),
              Column(
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/rec-esq.png",
                          width: 114,
                          height: 54,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Opacity(
                    opacity: 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/rec-esq.png",
                          width: 198,
                          height: 98,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
