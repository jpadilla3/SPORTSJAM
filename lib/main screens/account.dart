import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/buttons.dart';
import '../components/text_field.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: appbar()),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: SizedBox.square(
                            dimension: MediaQuery.of(context).size.width * 0.6,
                            child: Container(
                              color: Colors.red,
                            ),
                          )),
                    ],
                  ),

                  //email box
                  SizedBox(
                    height: 60,
                    child: MyTextField(
                        controller: email,
                        hintText: 'Email',
                        obscureText: false),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //password box
                  SizedBox(
                    height: 60,
                    child: MyTextField(
                        controller: password,
                        hintText: 'Password',
                        obscureText: true),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //confirm password
                  SizedBox(
                    height: 60,
                    child: MyTextField(
                        controller: confirmPassword,
                        hintText: 'Confirm Password',
                        obscureText: true),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //sign in button
                  signUpButton(context),

                  const SizedBox(
                    height: 20,
                  ),

                  //divider
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        endIndent: 10,
                      )),
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                          child: Divider(
                        indent: 10,
                      ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        twitterButton(),
                        facebookButton(),
                        googleButton()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
