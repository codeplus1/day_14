import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //slideshow
            SizedBox(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                dotColor: Colors.redAccent,
                dotBgColor: Colors.blueGrey,
                indicatorBgPadding: 2,
                boxFit: BoxFit.fitHeight,
                images: [
                  NetworkImage(
                      "https://image.freepik.com/free-photo/construction-worker-builder-with-tools_1401-16.jpg"),
                  NetworkImage(
                      "https://image.freepik.com/free-vector/mobile-device-repair-abstract-concept-illustration_335657-1896.jpg"),
                  NetworkImage(
                      "https://image.freepik.com/free-vector/product-teardown-concept-illustration_114360-1240.jpg")
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Today is Font Day\n visit Google fonts.com \nfor more information",
                style: GoogleFonts.getFont('Pacifico',
                    fontWeight: FontWeight.w600, fontSize: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
