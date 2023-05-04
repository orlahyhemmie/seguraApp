import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/dot.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

import '../registration/reg.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Column(
        children: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(top: 70, left: 370),
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ));
            },
          ),
          const SizedBox(
            height: 100,
          ),
          const Image(
            image: AssetImage('image/one.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 180),
            child: Row(
              children: const [
                Dots(),
                Dots(),
                Dots(),
              ],
            ),
          ),
          const SizedBox(
            height: 75,
          ),
          Positioned(
            top: 10,
            child: Container(
              height: 205,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Fastest Payment',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'QR code scanning technology makes your payment process more faster',
                      style: TextStyle(color: Colors.brown, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 350,
                      height: 47,
                      child: LargeButton(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WelcomePage(),
                              ));
                        },
                        text: 'Next',
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
