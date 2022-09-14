import 'package:flutter/material.dart';

class CustomScrollPage extends StatelessWidget {
  const CustomScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Custom Scroll Page"),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, idx) {
                return Container(
                  color: Colors.blue[100],
                  child: Text(" Grid Item $idx"),
                );
              },
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 4),
          ),
        ],
      ),
    );
  }
}
