import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatefulWidget {
  static const String routeName = "/NavigationScreen";
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var data;
  double price = 0;

  @override
  void initState(){
    data = Get.arguments;
    price = Get.arguments[1];
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Padding(padding: const EdgeInsets.all(8.0), child: Center(child: Column(children: [
        Text(data.toString()),
        Text(price.toString()),
        SizedBox(
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {
                      Get.back(result: ["Hello Backing world", false, 341]);
                    },
                    child: const Text("Get Back")),
              ),
      ],)))

    );
  }
}