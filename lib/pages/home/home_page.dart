import 'package:flutter/material.dart';
import 'package:flutter_responsivo/breakpoints.dart';
import 'package:flutter_responsivo/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_responsivo/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter_responsivo/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print('b ${constraints.biggest}');
      print('s ${constraints.smallest}');

      return Scaffold(
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint
            ? const Drawer(
                backgroundColor: Colors.white,
              )
            : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [TopSection()],
              )),
        ),
      );
    });
  }
}
