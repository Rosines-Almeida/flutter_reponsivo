import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constrain) {
      print('expand bi${constrain.biggest}');
      print('expande sma${constrain.smallest}');
      return Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              height: 45,
              child: Row(
                children: [
                  const SizedBox(
                    width: 4,
                  ),
                  IconButton(
                      color: Colors.grey,
                      onPressed: () {},
                      icon: const Icon(Icons.search)),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'pesquise',
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (constrain.maxWidth >= 400)
            const SizedBox(
              width: 31,
            ),
          FloatingActionButton(
            onPressed: () {},
            child: Text('Aprender'),
          ),
          if (constrain.maxWidth >= 500)
            const SizedBox(
              width: 8,
            ),
          FloatingActionButton(
            onPressed: () {},
            child: Text('Flutter'),
          )
        ],
      );
    }));
  }
}
