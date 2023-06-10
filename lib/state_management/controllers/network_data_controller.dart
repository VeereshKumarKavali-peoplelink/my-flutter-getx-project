

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../models/data_model.dart';

class NetworkDataController extends GetxController{
  List<DataModel> dataList = [];
  bool isLoading = false;


  getData()async{
    isLoading = true;
    update();
    var data = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    dataList = (jsonDecode(data.body) as List).map((e) => DataModel.fromJson(e)).toList();
    isLoading =  false;
    update();

  }

}
