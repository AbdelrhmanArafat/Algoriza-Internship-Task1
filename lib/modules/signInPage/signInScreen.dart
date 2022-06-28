// ignore_for_file: avoid_print

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:test1/components/myDivider.dart';
import 'package:test1/components/myElevatedButton.dart';
import 'package:test1/components/myOutlinedButton.dart';
import 'package:test1/components/myTextButton.dart';
import 'package:test1/components/myTextFromField.dart';
import 'package:test1/modules/registerPage/registerScreen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final fromKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: fromKey,
          child: Stack(
            children: [
              Column(
                children: const [
                  CircleAvatar(
                    radius: 250,
                    backgroundImage:
                        AssetImage('assets/images/ReadingGlassesCuate.png'),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to Fashion Daily',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            MyTextButton(
                              pressed: () {},
                              text: 'Help',
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    MyTextFromField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      prefixIcon: CountryCodePicker(
                        onChanged: print,
                        initialSelection: 'EG',
                        showFlag: false,
                      ),
                      validator: 'Phone Number is not registered',
                      labelText: 'Phone Number',
                      hintText: 'Eg.201147719308',
                    ),
                    const SizedBox(height: 15),
                    MyElevatedButton(
                      pressed: () {
                        if (fromKey.currentState!.validate()) {}
                      },
                      text: 'Sign In',
                    ),
                    const SizedBox(height: 20),
                    const MyDivider(),
                    const SizedBox(height: 20),
                    MyOutlinedButton(
                      pressed: () {},
                      icon: Icons.g_mobiledata,
                      text: 'Sign with by Google',
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Doesn\'t has any account?'),
                        MyTextButton(
                          pressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          text: 'Register here',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
