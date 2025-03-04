import 'package:flutter/material.dart';
import 'package:game_unlockerapp/login/widgets/appbar_widget.dart';
import 'package:game_unlockerapp/login/widgets/login_widget.dart';
import 'package:game_unlockerapp/utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: size.height * 2,
          child: Stack(
            children: [
              const Appbar(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: size.height * 0.62,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    width: double.infinity,
                    height: size.height * 0.5,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SizedBox(
                        height: size.height * 0.6,
                        child: Column(
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Crie Sua Conta",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                    bottom: size.height * 0.025,
                                  ),
                                  child: Text(
                                    "desbloqueie as melhores ofertas de jogos",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const WidgetLoginForm(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
