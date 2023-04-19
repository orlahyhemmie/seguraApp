import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 67.0),
          child: Text(
            'Setup Password',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white24,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 18,
            color: Colors.black54,
          ),
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white12,
      //   elevation: 0,
      //   title: const Center(
      //     child: Text(
      //       'Setup Password',
      //       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
        child: Column(
          children: [
            const Text(
              'Please create a secure password including the following criteria below',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              obscureText: true,
              autocorrect: false,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                labelText: 'Password',
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Must be at least 8 characters'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            LargeButton(
              onTap: () {},
              text: 'Continue',
              backgroundColor: Colors.green,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
