import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_busters/screens/home_page.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';
import 'package:hungry_busters/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();

    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Center(
              child: Image.asset(
                "assets/logo1.png",
              ),
            ),
            Text(
              "email",
              style: Fonts.fontMedium
                  .copyWith(color: CustomColors.primaryColor, fontSize: 16),
            ),
            TextFeildInput(
              hintText: 'jimmy@hotmail.com',
              textInputType: TextInputType.emailAddress,
              textEditingController: _emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "password",
              style: Fonts.fontMedium
                  .copyWith(color: CustomColors.primaryColor, fontSize: 16),
            ),
            TextFeildInput(
              hintText: '. . . . . .',
              textStyle: Fonts.fontBold.copyWith(fontSize: 20),
              textInputType: TextInputType.visiblePassword,
              textEditingController: _passwordController,
              ispassword: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "forgot password?",
                style: Fonts.fontMedium.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 62,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: CustomColors.primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Text(
                  "Sign In",
                  style: Fonts.fontMedium
                      .copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "or",
                style: Fonts.fontMedium.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/google.png'),
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/facebook.png')
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Don't have an account? Sign Up",
                style: Fonts.fontMedium.copyWith(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    color: CustomColors.primaryColor,
                    decorationColor: CustomColors.primaryColor),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
