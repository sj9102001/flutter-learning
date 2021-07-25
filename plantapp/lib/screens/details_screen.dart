import 'package:flutter/material.dart';

import '../widgets/detail/body.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/details-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
