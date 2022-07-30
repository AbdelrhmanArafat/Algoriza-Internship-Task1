import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test1/components/myElevatedButton.dart';
import 'package:test1/modules/registerPage/registerScreen.dart';
import 'package:test1/modules/signInPage/signInScreen.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  int activeIndex = 0;
  final images = [
    'assets/images/bicycle.png',
    'assets/images/done.png',
  ];
  final texts = [
    Column(
      children: const [
        Text(
          'Get food delivery to your doorstep asap',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'We have young and professional delivery'
          'team that will bring your food as soon as'
          'possible to your doorstep asap',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          'Buy Any Food from your favorite restaurant',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'We are constantly adding your favorite'
          'restaurant throughout the territory and around'
          'your area carefully selected',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyElevatedButton(
                      pressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ),
                        );
                      },
                      text: 'Skip',
                      width: 80,
                      backgroundColor: Colors.brown,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Image.asset(
                  'assets/images/7.png',
                  cacheHeight: 80,
                ),
                CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    final image = images[index];
                    final text = texts[index];
                    return buildImage(image, text, index);
                  },
                  options: CarouselOptions(
                    height: 500,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),
                buildIndicator(),
                const SizedBox(height: 20),
                MyElevatedButton(
                  pressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  text: 'Get Started',
                  width: double.infinity,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Doesn\'t has any account?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String image, Widget text, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            text,
          ],
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const WormEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.brown,
          dotWidth: 20,
          dotHeight: 20,
        ),
      );
}
