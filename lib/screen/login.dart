import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.fromLTRB(200, 100, 200, 100),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: screenSize.width*0.5,
                child: Image.asset("assets/logo1.png"),
              ),
              Column(
                
                children: [
                  Container(

                    child: Image.network("https://ik.imagekit.io/963xiauuyq5/neucentrix/logo.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
