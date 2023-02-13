import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/breakpoint.dart';
import 'layout/responsive_center.dart';
import 'SignIn/SignIn.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //    appBar: AppBar(title: Text('Test')),
        body: SingleChildScrollView(
            child: ReponsiveCenter(
                maxContexntWidth: BreakPoint.tablet,
                padding: EdgeInsets.all(30),
                child: SignIn())));
  }
}
