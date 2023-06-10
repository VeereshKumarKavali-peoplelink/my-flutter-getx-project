import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_project/state_management/controllers/data_controller.dart';

import 'controllers/getx_data_controller.dart';

class StateManageScreen extends StatefulWidget {
  const StateManageScreen({super.key});

  @override
  State<StateManageScreen> createState() => _StateManageScreenState();
}

class _StateManageScreenState extends State<StateManageScreen> {
  DataController dataController = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State Management")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("Obx Current Count is ${dataController.count}", style: Theme.of(context).textTheme.headlineMedium)),
          const SizedBox(height: 100),
          GetX(init: GetxDataController(),builder: (controller)=> Column(
            children: [
              Text("Getx Name is ${controller.name}", style: Theme.of(context).textTheme.headlineMedium),
              TextField(decoration: const InputDecoration(hintText: "Enter Name"), onChanged: (str){controller.name.value=str;},)
            ]
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            dataController.increment();
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
