import 'package:flutter/material.dart';

class ResponsiveWiget extends StatelessWidget {
  final Widget mobile;
  final Widget Tab;
  final Widget DeskTop;

  const ResponsiveWiget({Key? key, required this.mobile, required this.Tab, required this.DeskTop}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, Constraints) {
          if(Constraints.maxWidth < 768){
            return mobile;
          }
         else if(Constraints.maxWidth > 768 && Constraints.maxWidth < 992){
           return Tab;
          }
         else{
           return DeskTop;
          }
        });
  }
}

