import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/schedule_controller.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ScheduleController(),
      initState: (state) {},
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('ScheduleView'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'ScheduleView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
