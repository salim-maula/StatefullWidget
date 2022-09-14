import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {

  final PageController _controller = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
      Page(setText: "Page 1"),
      Page(setText: "Page 2"),
      Page(setText: "Page 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page View"),
      ),
      body: PageView.builder(
          controller: _controller,
          itemCount: _pages.length,
          itemBuilder: (context, idx){
            return _pages[idx];
          },
          onPageChanged: (idx){
            setState(() {
              _activePage = idx;
            });
          }
      )
    );
  }
}


class Page extends StatelessWidget {
  const Page({Key? key, required this.setText}) : super(key: key);

  final String setText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(setText),
      ),
    );
  }
}
