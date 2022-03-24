import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CategoryAPI extends StatefulWidget {
  const CategoryAPI({Key? key}) : super(key: key);

  @override
  State<CategoryAPI> createState() => _CategoryAPIState();
}

String stringResponse = '';
List categoryList = [];

class _CategoryAPIState extends State<CategoryAPI> {
  @override
  void initState() {
    super.initState();
    apicall();
  }

  bool isLoading = false;
  int selectedCard = -1;
  Future apicall() async {
    setState(() {
      isLoading = true;
    });
    final response = await http.get(Uri.parse(
        'https://qtpq.azurewebsites.net/api/menu/getProductInMenuWithName/2?productName=Black'));
    if (response.statusCode == 200) {
      print(response.statusCode);
      print(jsonDecode(response.body)['data']);
      setState(() {
        categoryList = json.decode(response.body);
        isLoading = false;
      });
    } else {
      throw Exception("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


// Future<List<Datum>> fetchCategory() async {
//   final response = await http
//       .get(Uri.parse('https://qtpq.azurewebsites.net/api/category/getList'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     Category category = categoryFromJson(response.body);
//     List<Datum> arrData = category.data;
//     return arrData;
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load product');
//   }
// }