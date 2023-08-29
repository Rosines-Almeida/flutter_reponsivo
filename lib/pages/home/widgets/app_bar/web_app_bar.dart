import 'package:flutter/material.dart';
import 'package:flutter_responsivo/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsiveContent(),
          // Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
          ),
          const SizedBox(
            width: 24,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Fazer login"),
          ),
          const SizedBox(
            width: 8,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("cadastrar"),
          )
        ],
      ),
    );
  }
}
