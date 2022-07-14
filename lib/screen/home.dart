import 'package:flutter/material.dart';
import 'package:neucentrix_web/conts.dart';
import 'package:neucentrix_web/dropdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neucentrix_web/screen/login.dart';
import '../botton.dart';
import '../responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppbarSmallSize(screenSize)
            : AppbarFullSize(screenSize),
        body: ListView(
          children: [
            Container(
              height: 600,
              child: Row(
                children: [
                  Container(
                    height: 600,
                    width: screenSize.width * 0.5,
                    padding: EdgeInsets.only(left: 100, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hub of The World",
                          style: GoogleFonts.didactGothic(
                              color: kPrimaryColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Digital Ecosystem",
                          style: GoogleFonts.didactGothic(
                              color: kPrimaryColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Data Center dan Layanan Digital",
                          style: GoogleFonts.didactGothic(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Data Anda adalah bisnis Anda. Bangun dan miliki pusat data",
                          style: GoogleFonts.didactGothic(
                            color: kDarkBotton,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "yang dapat diandalkan, aman, dan netral.",
                          style: GoogleFonts.didactGothic(
                            color: kDarkBotton,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Sederhanakan sistem operasional bisnis Anda",
                          style: GoogleFonts.didactGothic(
                            color: kDarkBotton,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "dengan beragam dukungan penyimpanan data dan",
                          style: GoogleFonts.didactGothic(
                            color: kDarkBotton,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "layanan cloud yang disediakan oleh gerbang",
                          style: GoogleFonts.didactGothic(
                            color: kDarkBotton,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "konten terkemuka di Indonesia.",
                          style: GoogleFonts.didactGothic(
                            color: kDarkBotton,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Botton_tombol(title: "Jelajahi layanan",arah: login(),),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            botton_tombol2(title: "Lihat fasilitas",arah: login(),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.5,
                    height: 600,
                    child: ClipPath(
                      clipper: GambarClipper(),
                      child: Image.asset("assets/ilustrasi.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Apa itu neuCentrIX?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "neuCentrIX adalah ekosistem carrier-neutral",
              style: TextStyle(
                color: kDarkBotton,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "data center dan solusi serba ada untuk layanan",
              style: TextStyle(
                color: kDarkBotton,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "kolokasi, layanan cloud, dan internet exchange.",
              style: TextStyle(
                color: kDarkBotton,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize AppbarSmallSize(Size screenSize) {
    return PreferredSize(
        preferredSize: Size(screenSize.width, 135),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: kDarkBotton, width: 1, style: BorderStyle.solid),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 135,
                width: 135,
                padding: EdgeInsets.only(left: 30),
                child: Image.network(
                    "https://ik.imagekit.io/963xiauuyq5/neucentrix/logo.png"),
              ),
            ],
          ),
        ));
  }

  PreferredSize AppbarFullSize(Size screenSize) {
    return PreferredSize(
        preferredSize: Size(screenSize.width, 135),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: kDarkBotton, width: 1, style: BorderStyle.solid),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 135,
                width: 135,
                padding: EdgeInsets.only(left: 30),
                child: Image.network(
                    "https://ik.imagekit.io/963xiauuyq5/neucentrix/logo.png"),
              ),
              SizedBox(
                width: 400,
              ),
              Text(
                "About",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "Service",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "Pricing",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "News",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Botton_tombol(title: "Connect with us",arah: login(),),
              SizedBox(
                width: 20,
              ),
              botton_tombol2(title: "Login Dashboard",arah: login(),),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                child: En(),
              ),
            ],
          ),
        ));
  }
}


class GambarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(270, 0);
    path.lineTo(0, size.height);

    path.lineTo(
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
