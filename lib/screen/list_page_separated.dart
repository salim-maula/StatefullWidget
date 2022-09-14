import 'package:flutter/material.dart';

class ListPageSeparated extends StatefulWidget {
  const ListPageSeparated({Key? key}) : super(key: key);

  @override
  State<ListPageSeparated> createState() => _ListPageSeparatedState();
}

class _ListPageSeparatedState extends State<ListPageSeparated> {
  List _fruits = [
    "Semangka",
    "Nanas",
    "Mangga",
    "Alpukat",
    "Durian",
    "Salak",
    "Duku",
    "Rambutan",
    "Pepaya",
    "Apel",
    "Strawberi",
  ];

  void addItem() {
    _fruits.add("Buah");
    setState(() {});
  }

  void deleteItem(int idx) {
    _fruits.removeAt(idx);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Page Separated",
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, idx) {
          return ListTile(
            leading: CircleAvatar(
              child: Text("${idx+1}"),
            ),
            title: Text(_fruits[idx]),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
              ),
              color: Colors.red,
              onPressed: (){
                  deleteItem(idx);
              },
            ),
          );
        },
        separatorBuilder: (context, idx) => Divider(
          height: 1,
          indent: 16,
          endIndent: 16,
          color: Colors.black,
        ),
        itemCount: _fruits.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addItem(),
        child: Icon(Icons.add),
        ),
      );
  }
}
