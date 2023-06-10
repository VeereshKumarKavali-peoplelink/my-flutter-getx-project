import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_project/get_utils_screen.dart';
import 'package:my_flutter_getx_project/form_validation_screen.dart';
import 'package:my_flutter_getx_project/navigation_screen.dart';
import 'package:my_flutter_getx_project/state_management/my_posts_list_screen.dart';
import 'package:my_flutter_getx_project/state_management/state_manage_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Getx Home Screen"), actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode))
        ]),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const GetUtilsScreen()));
                  },
                  child: const Text("Utils")),
            ),



             SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context,MaterialPageRoute( builder: (builder) => const Formvalidation()));
                    Get.to(const FormValidation());
                  },
                  child: const Text("Form Validation")),
            ),



            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  onPressed: () async {
                    //Navigator.push(context,MaterialPageRoute( builder: (builder) => const Formvalidation()));
                   var data =  await Get.to(const NavigationScreen(), arguments: ["Hello world", 12.3, true, 143]);
                   print(data ?? "No data");
                  },
                  child: const Text("Navigation")),
            ),




             SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context,MaterialPageRoute( builder: (builder) => const Formvalidation()));
                    Get.to( const StateManageScreen());
                  },
                  child: const Text("Getx Reactive State Mangement(Obx/GetX)")),
            ),

             SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context,MaterialPageRoute( builder: (builder) => const Formvalidation()));
                    Get.to( const MyPostsListScreen());
                  },
                  child: const Text("Getx State Mangement(GetBuilder)")),
            ),
          

            ],
            )));
  }
}
