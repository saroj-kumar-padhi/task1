import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task1/main.dart';
import 'package:task1/responsive_helper.dart';

class WhoWeArePageNavigator extends StatelessWidget {
  const WhoWeArePageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveWiget(
          deskTop: WhoWeArePage(WideScreenMenu(), WideScreenBlogPageSnippet),
          tab: WhoWeArePage(WideScreenMenu(), WideScreenBlogPageSnippet),
          mobile: WhoWeArePage(MobileMenu(), MobileBlogPageSnippet),
        ),
      );
}

class WideScreenMenu extends StatelessWidget {
  WideScreenMenu();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: PujaPurohitHeader("Puja Purohit"),
          ),
          Spacer(),
          BannerText('Home'),
          Spacer(),
          BannerText('Who we are'),
          Spacer(),
          BannerText('Careers'),
          Spacer(),
        ],
      ),
    );
  }
}

class MobileMenu extends StatelessWidget {
  MobileMenu();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 2,
        ),
        Expanded(flex: 4, child: PujaPurohitHeader("Puja Purohit")),
        Expanded(flex: 1, child: BannerText('Home')),
        Expanded(flex: 1, child: BannerText('Who we are')),
        Expanded(flex: 1, child: BannerText('Careers')),
        Spacer(
          flex: 4,
        ),
      ],
    );
  }
}

class WhoWeArePage extends StatelessWidget {
  WhoWeArePage(this.menu, this.blogTile);
  final Widget menu;
  Widget Function(String, String, String) blogTile;
  @override
  Widget build(BuildContext context) {
    // return ListView(
    // shrinkWrap: true,
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Flexible(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 10,
                    child: Stack(
                      children: [
                        Flexible(
                          child:
                              // Container(color: Colors.black,),
                              BackgroundImage(),
                        ),
                        Flexible(child: menu),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                      flex: 5,
                      child: blogTile(
                          "who we are",
                          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus ut urna ac ullamcorper. Nulla sit amet viverra lacus, in consectetur elit. Maecenas quis aliquam metus, id varius massa. Nam nisl purus, pulvinar sit amet ultricies vel, blandit in est. Ut semper nibh eget congue tempor. Quisque vitae ultrices mauris. Aliquam erat volutpat. Integer purus sapien, hendrerit at congue quis, pellentesque vel turpis. Curabitur vitae placerat ex, ut porttitor nulla. Praesent feugiat hendrerit dignissim. Nullam lectus orci, finibus nec nisi at, pharetra condimentum metus. Aliquam condimentum molestie neque, ut semper erat tempus a. Mauris tincidunt posuere mauris eu lobortis",
                          "lib/assest/lap.jpg")),
                  Spacer(),
                  // blogpagesnippet(
                  //     headertext: "who we are",
                  //     contenttext:
                  //         " lorem ipsum dolor sit a",
                  //     imagepath: "lib/assest/lap.jpg")),
                ],
              )
              //   ],
              // ),
              )
        ],
      ),
    );
  }
}

Widget MobileBlogPageSnippet(headerText, contentText, imagePath) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(children: [
      Expanded(
        flex: 1,
        child: Text(
          headerText,
          style: TextStyle(fontSize: 25),
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.fill, image: AssetImage(imagePath)),
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            contentText,
        
            overflow: TextOverflow.ellipsis,
            maxLines: 10,
            // overflow: TextOverflow.clip,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    ]),
  );
}

Widget WideScreenBlogPageSnippet(
  headerText,
  contentText,
  imagePath,
) {
  return Row(children: [
    Spacer(
      flex: 2,
    ),
    Expanded(
      flex: 6,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              headerText,
              style: TextStyle(fontSize: 50),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              contentText,
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    ),
    Spacer(),
    Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(imagePath)),
        ),
      ),
    ),
    Spacer(
      flex: 2,
    ),
  ]);
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

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

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
