import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task1/main.dart';
import 'package:task1/responsive_helper.dart';

class wewre extends StatelessWidget {
  const wewre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveWiget(
          DeskTop: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  imageContainer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: customfonts(),
                        ),
                        Spacer(),
                        BannerText('Home'),
                        SizedBox(
                          width: 30,
                        ),
                        BannerText('Who we are'),
                        SizedBox(
                          width: 30,
                        ),
                        BannerText('Careers'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Tab: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  imageContainer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200.0),
                          child: customfonts(),
                        ),
                        BannerText('Home'),
                        SizedBox(
                          width: 30,
                        ),
                        BannerText('Who we are'),
                        SizedBox(
                          width: 30,
                        ),
                        BannerText('Careers'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          mobile: Container(
            child: Text("Put mobile view here"),
          ),
        ),
      );
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

class imageContainer extends StatelessWidget {
  const imageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('lib/assest/lap.jpg')),
      ),
    );
  }
}
