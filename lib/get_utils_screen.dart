import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetUtilsScreen extends StatelessWidget {
  const GetUtilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Get utils")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Hello", "Hii", //snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(seconds: 2), backgroundColor: Colors.amberAccent);
                  },
                  child: const Text('Show Snackbar'),
                ),
              ),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: "Log out",
                       // content: const Text("Do you want to Logout"),
                        cancel: const Text("Cancel"),
                        confirm: const Text("Confirm"),
                        onCancel: () {
                          Get.back();
                        },
                        middleText: "I am a middle Text");
                  },
                  child: const Text('Show Dialog box'),
                ),
              ),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      BottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        onClosing: () {},
                        builder: (context) {
                          return Container(
                            height: 250,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFFFFF),
                                  Color(0xFF24A4C4),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: const Center(child: Text("Hello world")),
                          );
                        },
                      ),
                    );
                  },
                  child: const Text('Show Bottom Sheet'),
                ),
              ),


              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(Center(child: SizedBox(height: Get.height*0.2, child: const Text("Iam a bottom sheet"))), enableDrag: true, isDismissible: true, backgroundColor: Colors.green);
                  },
                  child: const Text('Show Bottom Sheet'),
                ),
              ),


              

            ],
          ),
        ));
  }
}
