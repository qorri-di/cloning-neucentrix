import 'package:flutter/material.dart';
class botton_tombol2 extends StatelessWidget {
  const botton_tombol2({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            side: BorderSide(width: 1, color: kPrimaryColor),
            primary: Colors.white),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
              fontSize: 17,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Botton_tombol extends StatelessWidget {
  Botton_tombol({
    Key? key,

    required this.title,
   
  }) : super(key: key);

  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            primary: kPrimaryColor),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}