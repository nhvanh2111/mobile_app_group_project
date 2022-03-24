import 'package:flutter/material.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/widgets/bottom_nav_bar.dart';
import 'package:mobile_app_group_project/screens/widgets/rounded_button.dart';
import 'package:mobile_app_group_project/screens/widgets/rounded_input_field.dart';
import 'package:mobile_app_group_project/screens/widgets/rounded_password_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/asset_3.png",
                  width: size.width * 0.35,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/asset_2.png",
                  width: size.width * 0.4,
                ),
              ),
              Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontFamily: "Gordita",
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Image.asset(
              "assets/images/login.png",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  // => Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (_) => HomeScreen())),
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "Sign In",
              press: ()  => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => BottomNavBar()),
              ),
            ),
          ],
        ),
            ],
          ),
        ),
      ),
    );
  }
}
