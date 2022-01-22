import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/who_we_are.dart';

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
                      child: PujaPurohitHeader("Puja Purohit"),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1),
                  child: PujaPurohitHeader("Company"),
                ),
                SizedBox(
                  height: 10,
                ),
                NavigatorTextButtons("Who we are"),
                SizedBox(
                  height: 5,
                ),
                NavigatorTextButtons("Blog"),
                SizedBox(
                  height: 5,
                ),
                NavigatorTextButtons("careers"),
                SizedBox(
                  height: 5,
                ),
                NavigatorTextButtons("Report Fraud"),
                SizedBox(
                  height: 5,
                ),
                NavigatorTextButtons("Contacts"),
                SizedBox(
                  height: 5,
                ),
                NavigatorTextButtons("Investor Relation"),
              ],
            )),
      ],
    ));
  }
}

class PujaPurohitHeader extends StatelessWidget {
  PujaPurohitHeader(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        color: Colors.grey,
        fontSize: 30,
      ),
    );
  }
}

class NavigatorTextButtons extends StatelessWidget {
  late String text;
  NavigatorTextButtons(this.text);

  List<Widget> names = [
    WhoWeArePageNavigator(),
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
      child: Text(
        text,
        style: TextStyle(color: Colors.grey, fontSize: 25),
      ),
    );
  }
}
