import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/views/welcome_view.dart';
import 'package:mobile_app_group_project/screens/widgets/bottom_nav_bar.dart';

import 'screens/api/categoryapi.dart';
import 'screens/views/category_list_view.dart';
import 'screens/widgets/section_title.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  static final String title = 'Group Project';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
      ),
      home: WelcomeView(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => BottomNavBar(),
      //   // CommissionReport.routeName: (context) => const CommissionReport(),
      // },
    );
  }
}

// class Categories extends StatelessWidget {
//   const Categories({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: SectionTitle(
//             title: "Categories",
//             pressSeeAll: () => Navigator.of(context).pushReplacement(
//               MaterialPageRoute(builder: (_) => CategoryList()),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 84,
//           child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             itemCount: categoryList.length,
//             itemBuilder: (context, index) => CategoryCard(
//               // icon: demo_categories[index].icon,
//               title: categoryList[index].title,
//               press: () {},
//             ),
//             separatorBuilder: (context, index) =>
//                 const SizedBox(width: defaultPadding),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CategoryCard extends StatelessWidget {
//   const CategoryCard({
//     Key? key,
//     // required this.icon,
//     required this.title,
//     required this.press,
//   }) : super(key: key);

//   // final String icon,
//   final String title;
//   final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: press,
//       style: OutlinedButton.styleFrom(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//             vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
//         child: Column(
//           children: [
//             // SvgPicture.asset(icon),
//             // const SizedBox(height: defaultPadding / 2),
//             Text(
//               title,
//               style: Theme.of(context).textTheme.subtitle2,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
