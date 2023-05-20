import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';
import '../widgets/iconborder.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Summary Transaction',
          ),
        ),
        backgroundColor: Colors.green.shade900,
        elevation: 0,
        leading: IconContainer(
          icon: Icons.arrow_back_ios,
          onTap: () {},
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: Icon(
                Icons.question_mark,
                size: 15,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(
                      image: AssetImage('image/one.png'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Starbucks Coffee',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Payment on Dec 2, 2020',
                    style: TextStyle(color: Colors.orange),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    '\$15.00',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade800,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.warning_amber_outlined,
                            color: Colors.white54,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Payment fee \$2 has been applied',
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 205,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Container(
                      height: 5,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Choose Cards',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Center(
                    child: Container(
                      width: 380,
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
                              children: const [
                                Text(
                                  'Wally Virtual Card',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '0318-1608-2105',
                                  style: TextStyle(color: Colors.black26),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: LargeButton(
                    text: 'Proceed to Pay',
                    textColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
