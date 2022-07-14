import 'package:flutter/material.dart';

class En extends StatefulWidget {
  const En({Key? key}) : super(key: key);

  @override
  _EnState createState() => _EnState();
}

class _EnState extends State<En> {
  String dropdownvalue = 'EN';

  var items = [
    'EN',
    'ID',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              underline: Container(color: Colors.transparent),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
