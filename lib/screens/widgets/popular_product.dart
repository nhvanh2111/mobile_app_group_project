// import 'package:flutter/material.dart';
// import 'package:mobile_app_group_project/config.dart';
// import 'package:mobile_app_group_project/screens/models/product.dart';
// import 'package:mobile_app_group_project/screens/views/product_list_view.dart';
// import 'package:mobile_app_group_project/screens/widgets/product_menu_card.dart';
// import 'section_title.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

// Future<List<Product>> fetchProduct() async {
//   final response = await http.get(Uri.parse(
//       'https://qtpq.azurewebsites.net/api/product/getList?pageNum=1&pageSize=2'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print(response.statusCode);
//     print(jsonDecode(response.body)['data']);
//     // return Product.fromJson(jsonDecode(response.body));
//     // Map data = jsonDecode(response.body);
//     // Iterable list = data['content'];
//     // final vehicles = list.cast<Map<String, dynamic>>();
//     // final listofvehicles = await vehicles.map<Product>((json) {
//     //   return Product.fromJson(json);
//     // }).toList();
//     // return listofvehicles;

//     var jsonString = response.body;
//     Iterable list = json.decode(jsonString);

//     final bookingsAccept = list.cast<Map<String, dynamic>>();
//     final listOfBookingsAccept = bookingsAccept.map<Product>((json) {
//       return Product.fromJson(json);
//     }).toList();
//     return listOfBookingsAccept;
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load product');
//   }
// }

// class Product {
//   final String image, productName;
//   final int unitPrice;
//   final int commission;
//   //final Color bgColor;

//   const Product({
//     required this.image,
//     required this.productName,
//     required this.unitPrice,
//     required this.commission,
//     // this.bgColor = const Color(0xFFEFEFF2),
//   });

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       image: json['image'],
//       productName: json['productName'],
//       unitPrice: json['unitPrice'],
//       commission: json['commission'],
//     );
//   }
// }

// class PopularProducts extends StatefulWidget {
//   const PopularProducts({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<PopularProducts> createState() => _PopularProductsState();
// }

// class _PopularProductsState extends State<PopularProducts> {
//   // late Future<Product> futureProduct;
//   late Future<List<Product>> futureProduct;
//   final map = Map<String, dynamic>();

//   @override
//   void initState() {
//     super.initState();
//     futureProduct = fetchProduct();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: SectionTitle(
//             title: "Popular Souvenir",
//             pressSeeAll: () => Navigator.of(context).pushReplacement(
//               MaterialPageRoute(builder: (_) => ProductList()),
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           physics: const BouncingScrollPhysics(
//               parent: AlwaysScrollableScrollPhysics()),
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(
//               map.length,
//               (index) => Padding(
//                 padding: const EdgeInsets.only(right: defaultPadding),
//                 child: ProductCard(
//                   title: map[index].productName,
//                   image: map[index].image,
//                   price: map[index].unitPrice,
//                   commission: map[index].commission,
//                   //bgColor: Map()[index].bgColor,
//                   press: () {},
//                 ),
//               ),
//             ),
//             // children: List.generate(
//             //     Map().length,
//             //     (index) => FutureBuilder<Product>(
//             //           future: futureProduct,
//             //           builder: (context, snapshot) {
//             //             if (snapshot.hasData) {
//             //               return Text(snapshot.data!.title);
//             //             } else if (snapshot.hasError) {
//             //               return Text('${snapshot.error}');
//             //             }

//             //             // By default, show a loading spinner.
//             //             return const CircularProgressIndicator();
//             //           },
//             //         )),
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/models/product.dart';
import 'package:mobile_app_group_project/screens/views/product_list_view.dart';
import 'package:mobile_app_group_project/screens/widgets/product_menu_card.dart';
import 'section_title.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Product> fetchProduct() async {
  final response = await http.get(Uri.parse(
      'https://qtpq.azurewebsites.net/api/product/getList?pageNum=1&pageSize=2'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.statusCode);
    print(jsonDecode(response.body)['data']);
    return Product.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Product {
  final String image, productName;
  final int unitPrice;
  final int commission;
  //final Color bgColor;

  const Product({
    required this.image,
    required this.productName,
    required this.unitPrice,
    required this.commission,
    // this.bgColor = const Color(0xFFEFEFF2),
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      image: json['image'],
      productName: json['productName'],
      unitPrice: json['unitPrice'],
      commission: json['commission'],
    );
  }
}

class PopularProducts extends StatefulWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late Future<Product> futureProduct;
  final map = Map<String, dynamic>();

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Popular Souvenir",
            pressSeeAll: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => ProductList()),
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              map.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  title: map[index].productName,
                  image: map[index].image,
                  price: map[index].unitPrice,
                  commission: map[index].commission,
                  //bgColor: Map()[index].bgColor,
                  press: () {},
                ),
              ),
            ),
            // children: List.generate(
            //     Map().length,
            //     (index) => FutureBuilder<Product>(
            //           future: futureProduct,
            //           builder: (context, snapshot) {
            //             if (snapshot.hasData) {
            //               return Text(snapshot.data!.title);
            //             } else if (snapshot.hasError) {
            //               return Text('${snapshot.error}');
            //             }

            //             // By default, show a loading spinner.
            //             return const CircularProgressIndicator();
            //           },
            //         )),
          ),
        )
      ],
    );
  }
}
