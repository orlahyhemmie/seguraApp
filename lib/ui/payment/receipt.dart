import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'Payment Receipt',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 550,
            width: 380,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  const Image(
                    height: 60,
                    width: 60,
                    image: AssetImage('image/one.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Payment Success',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Your Payment for Starbucks Coffee has been successfully done',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Total Payment',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    '\$132.00',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.black,
                    indent: 30,
                    endIndent: 30,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Payment for',
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Center(
                      child: Container(
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                  'image/one.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Starbucks Coffee',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Dec 2, 2020 - 3.02PM',
                                    style: TextStyle(color: Colors.black26),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LargeButton(
                    text: 'Done',
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Pay again',
                        style: TextStyle(color: Colors.green, fontSize: 13),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
