import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/find_controller.dart';

class FindView extends StatelessWidget {
  const FindView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FindController(),
      initState: (state) {},
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('FindView'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'FindView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
