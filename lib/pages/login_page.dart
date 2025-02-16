import 'package:flashcards_app/utilities/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 30,
          children: [
            /// Login Text
            Text(
              'Login',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40,
              ),
            ),

            /// Input fields, button and "Don't have an account"
            Column(
              spacing: 25,
              children: [
                /// Input elements for password and email/username
                TextField(
                  decoration: InputDecoration(
                      fillColor: gray,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide.none),
                      hintText: '     Email or Username',
                      hintStyle:
                          TextStyle(color: Color(0xFFAAAAAA), fontSize: 15)),
                ),
                TextField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/Group.png'),
                      fillColor: gray,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide.none),
                      hintText: '     Password',
                      hintStyle:
                          TextStyle(color: Color(0xFFAAAAAA), fontSize: 15)),
                ),

                /// Sign In Button
                FilledButton(
                  style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: violet,
                      minimumSize: Size(double.infinity, 50)),
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),

                /// "Don't have an account?" part
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't Have An Account?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: violet,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),

            ///Or
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OR',
                  style: TextStyle(color: violet),
                ),
              ],
            ),

            /// Login with Facebook or Google
            Column(
              spacing: 20,
              children: [
                TextButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      side: BorderSide(
                          width: 0.5
                      ),
                      minimumSize: Size(double.infinity, 50)),
                  onPressed: () {},
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      spacing: 60,
                      children: [
                        Image.asset('assets/Facebook.png'),
                        Text(
                          'Login With Facebook',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      side: BorderSide(
                        width: 0.5
                      ),
                      minimumSize: Size(double.infinity, 50)),
                  onPressed: () {},
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      spacing: 60,
                      children: [
                        Image.asset('assets/Google.png'),
                        Text(
                          'Login With Google',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
