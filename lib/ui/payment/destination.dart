import 'package:flutter/material.dart';
import 'package:segurapay/ui/payment/account.dart';
import 'package:segurapay/ui/payment/payment.dart';
import 'package:segurapay/ui/widgets/iconborder.dart';

class BankDestination extends StatefulWidget {
  const BankDestination({super.key});

  @override
  State<BankDestination> createState() => _BankDestinationState();
}

class _BankDestinationState extends State<BankDestination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20),
            child: Row(
              children: [
                IconContainer(
                    icon: (Icons.arrow_back_ios),
                    iconColor: Colors.white,
                    onTap: () {}),
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  'Select Destination',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Where are you transferring to?',
              style: TextStyle(color: Colors.white60, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black12),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BankAccount()));
                    },
                    child: Container(
                      height: 55,
                      width: 355,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12),
                      child: const Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_balance,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Bank',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 230,
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.black38,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Wallet()));
                    },
                    child: Container(
                      height: 55,
                      width: 355,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('image/one.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Wally',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 210,
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.black38,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
