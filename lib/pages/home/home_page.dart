import 'package:flutter/material.dart';
import 'package:flutter_responsivo/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_responsivo/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print('b ${constraints.biggest}');
      print('s ${constraints.smallest}');

      return Scaffold(
        appBar: constraints.maxWidth < 800
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(double.infinity, 72),
              ),
        drawer: Drawer(),
      );
    });
  }
}
