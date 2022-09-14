import 'package:flutter/material.dart';

class ListPageBuilder extends StatelessWidget {
  const ListPageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, idx){
          return Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text((idx+1).toString(), style: TextStyle(fontSize: 20),),
            ),
          );
        },
      ),
    );
  }
}
