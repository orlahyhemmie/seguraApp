import 'package:flutter/material.dart';
import 'package:segurapay/ui/registration/reg.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[900],
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15, top: 200),
              child: Image(
                image: AssetImage('image/one.png'),
                height: 90,
              ),
            ),
            const SizedBox(
              height: 210,
            ),
            const Center(
              child: Text(
                'Welcome to Segurapay',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                'Voila! You have successfully created your acount',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(13.0),
              child: LargeButton(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ));
                },
                text: 'Get started',
                backgroundColor: Colors.green,
                textColor: Colors.white,
              ),
            )
          ],
        ));
  }
}
