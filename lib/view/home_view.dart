import 'package:calculator_app/controller/calc_controller.dart';
import 'package:calculator_app/widget/button_widget.dart';
import 'package:calculator_app/widget/display_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: DislplayWidget(value: controller.display),
          ),
          Expanded(
            flex: 3,
            child: ButtonWidget(
              onButtonClick: controller.onButtonClick,
            ),
          ),
        ],
      ),
    );
  }
}
