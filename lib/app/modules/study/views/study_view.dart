import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/study_controller.dart';

class StudyView extends StatelessWidget {
  const StudyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: StudyController(),
      initState: (state) {},
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('StudyView'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'StudyView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
