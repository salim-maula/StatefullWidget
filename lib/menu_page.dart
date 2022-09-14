import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:statefull_widget/screen/custom_scroll_view.dart';
import 'package:statefull_widget/screen/grid_page_builder.dart';
import 'package:statefull_widget/screen/input_page.dart';
import 'package:statefull_widget/screen/list_page.dart';
import 'package:statefull_widget/screen/list_page_builder.dart';
import 'package:statefull_widget/screen/list_page_separated.dart';
import 'package:statefull_widget/screen/my_page_view.dart';
import 'package:statefull_widget/screen/test.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Page",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => InputPage(),
                    ),
                  );
                },
                child: Text(
                  "Input Page",
                ),
              ),
               SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Test(),
                    ),
                  );
                },
                child: Text(
                  "Test",
                ),
              ),
               SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => ListPage(),
                    ),
                  );
                },
                child: Text(
                  "List View",
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => ListPageBuilder(),
                    ),
                  );
                },
                child: Text(
                  "List Page Builder",
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => ListPageSeparated(),
                    ),
                  );
                },
                child: Text(
                  "List Page Separated",
                ),
              ),
               SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => GridPageBuilder(),
                    ),
                  );
                },
                child: Text(
                  "Grid Page Builder",
                ),
              ),
               SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => MyPageView(),
                    ),
                  );
                },
                child: Text(
                  "My Page View",
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => CustomScrollPage(),
                    ),
                  );
                },
                child: Text(
                  "Custom Scroll Page",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
