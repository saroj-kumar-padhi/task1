import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/who%20we%20are.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(flex: 6, child: Container()),
        Divider(
          color: Colors.black,
          thickness: 2,
        ),
        Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: CostumFonts('Puja Purohit'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1),
                  child: Text(
                    "COMPANY",
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Textwidget("WHO WE ARE"),
                SizedBox(
                  height: 5,
                ),
                Textwidget("Blog"),
                SizedBox(
                  height: 5,
                ),
                Textwidget("careers"),
                SizedBox(
                  height: 5,
                ),
                Textwidget("Report Fraud"),
                SizedBox(
                  height: 5,
                ),
                Textwidget("Contacts"),
                SizedBox(
                  height: 5,
                ),
                Textwidget("Investor Relation"),
              ],
            )),
      ],
    ));
  }
}

class CostumFonts extends StatelessWidget {
String text;
CostumFonts(this.text);

  @override
  Widget build(BuildContext context) {
    return customfonts();
  }
}

class customfonts extends StatelessWidget {
  const customfonts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Puja Purohit",
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        color: Colors.grey,
        fontSize: 30,
      ),
    );
  }
}

class Textwidget extends StatelessWidget {
  late String text;
  Textwidget(this.text);

  List<Widget> names = [
    wewre(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: names.length,
        itemBuilder: (context, index) => Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
          child: InkWell(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return (names[index]);
              }))
            },
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}


class BannerText extends StatelessWidget {
  String text;
  BannerText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(
        text,
        style: TextStyle(color: Colors.grey, fontSize: 25),
      ),
    );
  }
}
