import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_app_group_project/screens/api/categoryapi.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onSaved: (value) {
          CategoryAPI();
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search items...",
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          // suffixIcon: Padding(
          //   padding: const EdgeInsets.symmetric(
          //       horizontal: defaultPadding, vertical: defaultPadding / 2),
          //   child: SizedBox(
          //     width: 48,
          //     height: 48,
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         primary: Colors.blue,
          //         shape: const RoundedRectangleBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(15)),
          //         ),
          //       ),
          //       onPressed: () {},
          //       child: SvgPicture.asset("assets/icons/Filter.svg"),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
//     return Container(
//       //margin: AppTheme.padding,
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               height: 40,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                   //color: LightColor.lightGrey.withAlpha(100),
//                   color: primaryColorLight,
//                   borderRadius: BorderRadius.all(Radius.circular(12))),
//               child: TextField(
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Search Products",
//                     hintStyle: TextStyle(fontSize: 12),
//                     contentPadding:
//                         EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
//                     prefixIcon: Icon(Icons.search, color: Colors.black54)),
//               ),
//             ),
//           ),
//           SizedBox(width: 20),
//           // _icon(Icons.filter_list, color: Colors.black54)
//           SvgPicture.asset("assets/icons/Bell.svg"),
//         ],
//       ),
//     );
//   }
// }
  }
}
