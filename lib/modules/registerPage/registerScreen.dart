import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:test1/components/myDivider.dart';
import 'package:test1/components/myElevatedButton.dart';
import 'package:test1/components/myOutlinedButton.dart';
import 'package:test1/components/myTextButton.dart';
import 'package:test1/components/myTextFromField.dart';
import 'package:test1/main.dart';
import 'package:test1/modules/signInPage/signInScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            MyTextFromField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(Icons.email_outlined),
              validator: 'Email is not registered',
              labelText: 'Email',
              hintText: 'example@mail.com',
            ),
            const SizedBox(height: 15),
            MyTextFromField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              prefixIcon: CountryCodePicker(
                onChanged: print,
                initialSelection: 'EG',
                favorite: ['+39', 'FR'],
                showFlag: false,
              ),
              validator: 'Phone Number is not registered',
              labelText: 'Phone Number',
              hintText: 'Eg.201147719308',
            ),
            const SizedBox(height: 15),
            MyTextFromField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              prefixIcon: const Icon(Icons.password),
              validator: 'Password is not registered',
              labelText: 'Password',
              hintText: '',
            ),
            const SizedBox(height: 15),
            MyElevatedButton(
              pressed: () {
                // if (fromKey.currentState!.validate()) {}
              },
              text: 'Register',
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
                const Text('Has any account?'),
                MyTextButton(
                  pressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  text: 'Sign In here',
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'By registering your account, you are agree to our Terms and condition',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
