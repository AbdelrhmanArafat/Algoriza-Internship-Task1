import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/components/myDivider.dart';
import 'package:test1/components/myElevatedButton.dart';
import 'package:test1/components/myOutlinedButton.dart';
import 'package:test1/components/myTextButton.dart';
import 'package:test1/components/myTextFromField.dart';
import 'package:test1/modules/signInPage/signInScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/xd.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
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
                            'Register',
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
                        'Email',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextFromField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: const Icon(Icons.email_outlined),
                        validator: 'Email is not registered',
                        hintText: 'example@mail.com',
                      ),
                      const SizedBox(height: 15),
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
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyTextFromField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: const Icon(Icons.password),
                        validator: 'Password is not registered',
                        hintText: 'Enter your Password',
                        isPassword: true,
                      ),
                      const SizedBox(height: 15),
                      MyElevatedButton(
                        pressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        text: 'Register',
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
                            'Has any account?',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          MyTextButton(
                            pressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ),
                              );
                            },
                            text: 'Sign In here',
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
                                'By registering your account, you are agree to our ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Terms and condition',
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
          ],
        ),
      ),
    );
  }
}
