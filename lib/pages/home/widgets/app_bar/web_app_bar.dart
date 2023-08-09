import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(
            width: 24,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Fazer login"),
          ),
          const SizedBox(
            width: 8,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("cadastrar"),
          )
        ],
      ),
    );
  }
}
