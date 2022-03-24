import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/views/login_view.dart';
import 'package:mobile_app_group_project/screens/widgets/personal_menu.dart';
import 'package:mobile_app_group_project/screens/widgets/profile_picture.dart';

class PersonalView extends StatelessWidget {
  const PersonalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back_rounded,
      //       color: Colors.black,
      //     ),
      //   ),
      //   title: const Text(
      //     "Personal",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      appBar: CupertinoNavigationBar(
        leading: GestureDetector(
          child: Icon(CupertinoIcons.back),
          onTap: () {},
        ),
        middle: Text(
          "Pesonal",
          style: TextStyle(fontSize: 22),
        ),
        trailing: GestureDetector(
          child: Text(
            "Save",
            style: TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
          onTap: () {},
        ),
        border: Border(
            bottom: BorderSide(
          width: 0,
          color: CupertinoColors.white,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: defaultPadding * 2),
            Center(
              child: ProfilePicture(),
            ),
            SizedBox(height: defaultPadding),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.45,
                width: size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Company Name',
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Date Of Birth',
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Address',
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Phone',
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: defaultPadding),
            Center(
              child: Column(
                children: [
                  PersonalMenu(
                    text: "Change Password",
                    icon: "assets/icons/Key.svg",
                    press: () {},
                  ),
                  PersonalMenu(
                    text: "Log Out",
                    icon: "assets/icons/Log out.svg",
                    press: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => LoginView(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
