// ignore_for_file: avoid_print

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/xd.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
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
                                icon: Icons.help,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextFromField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        prefixIcon: CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'EG',
                          showFlag: false,
                        ),
                        validator: 'Phone Number is not registered',
                        hintText: 'Eg.201147719308',
                      ),
                      const SizedBox(height: 15),
                      MyElevatedButton(
                        pressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        text: 'Sign In',
                        width: double.infinity,
                      ),
                      const SizedBox(height: 20),
                      const MyDivider(),
                      const SizedBox(height: 20),
                      MyOutlinedButton(
                        pressed: () {},
                        icon: FontAwesomeIcons.google,
                        text: 'Sign with by Google',
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Doesn\'t has any account?',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
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
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Column(
                            children: const [
                              Text(
                                'Use the application according to policy rules. Any ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'kinds of violations will be subject to sanctions.',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
