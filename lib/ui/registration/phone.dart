import 'dart:math';
import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class Phone extends StatefulWidget {
  Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

TextEditingController countrycode = TextEditingController();

class _PhoneState extends State<Phone> {
  @override
  void initState() {
    countrycode.text = '+1';
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Text('Continue with Phone'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.green.shade900),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 15,
            ),
          ),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 15, top: 120),
        child: Column(
          children: [
            const Text(
              'Enter your phone number to receive a pin code to sign up.',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.white70),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: SizedBox(
                    width: 30,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: countrycode,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.none))),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(''),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: Colors.white)),
                )),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            LargeButton(
              text: 'Send Code',
              textColor: Colors.white,
              backgroundColor: Colors.green,
              onTap: () {
                Navigator.pushNamed(context, 'otp');
              },
            )
          ],
        ),
      ),
    );
  }
}
