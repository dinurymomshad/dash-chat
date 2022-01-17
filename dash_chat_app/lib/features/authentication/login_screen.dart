import 'package:dash_chat_app/features/authentication/sign_up_screen.dart';
import 'package:dash_chat_app/features/chat/chat_screen.dart';
import 'package:dash_chat_app/styles/styles.dart';
import 'package:dash_chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50),
                RichText(
                  text: TextSpan(
                    text: 'Dash ',
                    style: KTextStyle.headline1.copyWith(
                      color: KColors.black,
                    ),
                    children: [
                      TextSpan(
                          text: 'In',
                          style: KTextStyle.headline1.copyWith(
                            color: KColors.primary,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'join the dashers',
                  style: KTextStyle.body1.copyWith(color: KColors.secondary),
                ),
                const SizedBox(height: 100),
                const KTextField(
                  hinText: 'Email',
                  prefixIcon: KAssets.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 14),
                const KTextField(
                  hinText: 'Password',
                  prefixIcon: KAssets.password,
                  obscureText: true,
                ),
                const SizedBox(height: 100),
                KFilledButton(
                    buttonText: 'Dash In',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatScreen(),
                        ),
                      );
                    }),
                const SizedBox(height: 90),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Not a dasher yet?',
                        style: KTextStyle.subtitle2.copyWith(
                          color: KColors.secondary,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              text: ' Become one',
                              style: KTextStyle.subtitle2.copyWith(
                                color: KColors.primary,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
