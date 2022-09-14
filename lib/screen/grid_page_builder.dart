import 'package:flutter/material.dart';

class GridPageBuilder extends StatelessWidget {
  
  // const GridPageBuilder({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30
        ),
        itemBuilder: (context, idx){
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Text(myProducts[idx]["name"]),
          );
        },
      ),
    );
  }
}
