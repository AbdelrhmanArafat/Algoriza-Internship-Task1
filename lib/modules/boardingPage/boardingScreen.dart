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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                    width: 50,
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
                  return buildImage(image, index);
                },
                options: CarouselOptions(
                  height: 400,
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
    );
  }

  Widget buildImage(String image, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const WormEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.orange,
          dotWidth: 20,
          dotHeight: 20,
        ),
      );
}
