import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var _formKey = GlobalKey<FormState>();
  var _controllerUserName = TextEditingController();
  var _controllerPassword = TextEditingController();

  var _gender = "Laki - Laki";

  List<String> _days = [
    "senin",
    "selasa",
    "rabu",
    "kamis",
    "Jumat",
    "sabtu",
    "Minggu"
  ];

  List<String> _selectDays = [];

  var _darkMode = false;

  double _slider = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input Page",
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "Text Field",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Text Form Field",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textFormField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Radio",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _radio(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Check Box",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _checkBox(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Switch",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _switch(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Slider",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _sliderWitDivision(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Bottom Sheet",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => openModalBootmSheet(),
            child: Text(
              'Modal BottomSheet',
            ),
          ),
        ],
      ),
    );
  }

  Padding _sliderWitDivision() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Slider(
        value: _slider,
        min: 0,
        max: 10,
        label: '$_slider',
        divisions: 20,
        onChanged: (value) {
          setState(() => _slider = value);
        },
      ),
    );
  }

  ListTile _switch() {
    return ListTile(
      onTap: () => setState(() => _darkMode = !_darkMode),
      title: Text("Dark Mode"),
      trailing: Switch(
        value: _darkMode,
        onChanged: (value) => setState(() => _darkMode = value),
      ),
    );
  }

  Column _checkBox() {
    return Column(
        children: List.generate(_days.length, (index) {
      String day = _days[index];
      return CheckboxListTile(
        title: Text(day),
        value: _selectDays.contains(day),
        onChanged: (value) {
          if (value!) {
            _selectDays.add(day);
          } else {
            _selectDays.remove(day);
          }
          setState(() {});
          print(_selectDays);
        },
      );
    }));
  }

  Column _radio() {
    return Column(
      children: [
        ListTile(
          onTap: () => setState(() => _gender = 'Laki - Laki'),
          leading: Radio(
            value: "Laki - Laki",
            groupValue: _gender,
            onChanged: (value) {
              setState(() => _gender = value.toString());
            },
          ),
          title: Text("Laki-laki"),
        ),
        ListTile(
          onTap: () => setState(() => _gender = 'Perempuan'),
          leading: Radio(
            value: "Perempuan",
            groupValue: _gender,
            onChanged: (value) {
              setState(() => _gender = value.toString());
            },
          ),
          title: Text("Perempuan"),
        ),
      ],
    );
  }

  Padding _textFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerUserName,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerPassword,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_controllerUserName.text);
                  print(_controllerPassword.text);
                  //.......
                }
              },
              child: Text(
                "Submit TextFormField",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            obscureText: true,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: Icon(Icons.visibility),
            ),
          )
        ],
      ),
    );
  }

  void openModalBootmSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children:  [
             const SizedBox(
                height: 8,
              ),
             const Divider(
                thickness: 3,
                color: Colors.grey,
                indent: 150,
                endIndent: 150,
              ),
              ListTile(
                title: Text("Modal bottom sheet"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              Expanded(
                child: ListView.builder(
                
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){},
                      title: Text("Item $index"),
                    );
                  }
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
