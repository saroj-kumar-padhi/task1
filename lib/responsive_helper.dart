import 'package:flutter/material.dart';

class ResponsiveWiget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget deskTop;

  const ResponsiveWiget({Key? key, required this.mobile, required this.tab, required this.deskTop}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, Constraints) {
          if(Constraints.maxWidth < 768){
            return mobile;
          }
         else if(Constraints.maxWidth > 768 && Constraints.maxWidth < 992){
           return tab;
          }
         else{
           return deskTop;
          }
        });
  }
}

