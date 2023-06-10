import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_project/state_management/controllers/network_data_controller.dart';

class MyPostsListScreen extends StatefulWidget {
  const MyPostsListScreen({super.key});

  @override
  State<MyPostsListScreen> createState() => _MyPostsListScreenState();
}

class _MyPostsListScreenState extends State<MyPostsListScreen> {
  NetworkDataController networkDataController =
      Get.put(NetworkDataController());

  @override
  void initState() {
    networkDataController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data List Screen")),
      body: GetBuilder(
        builder: (controller) {
          return networkDataController.isLoading
              ? const Center(child: CircularProgressIndicator())
              : networkDataController.dataList.isEmpty
                  ? const Center(child: Text("No Data"))
                  : ListView.builder(itemCount: networkDataController.dataList.length,
                                    itemBuilder: (ctx, index) {
                                            return Text(networkDataController.dataList[index].title ?? "");
                    });
        },
      ),
    );
  }
}
