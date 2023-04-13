import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 330,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBlue2Color,
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextField(
          title: 'Email Address',
          hintText: 'Your Email Address',
          icon: Icons.person,
        );
      }

      Widget passwordInput() {
        return CustomTextField(
          title: 'Password',
          hintText: 'Your Password',
          obsecureText: true,
          icon: Icons.lock,
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: kWhiteColor,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your Future',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Furniture',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 90,
                    height: 6,
                    decoration: BoxDecoration(
                      color: kRedColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 40, left: 30, right: 30),
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), // Warna bayangan
                    spreadRadius: 2, // Jarak bayangan horizontal
                    blurRadius: 5, // Tingkat kebluran bayangan
                    offset:
                        Offset(0, 2), // Offset bayangan (horizontal, vertikal)
                  ),
                ],
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Note: About
                  Text(
                    'Login First',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  inputSection(),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          content(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  title: 'Login',
                  width: 300,
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 25,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Home-page');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
