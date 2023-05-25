import 'package:flutter/material.dart';
import 'package:segurapay/ui/payment/payment.dart';
import '../widgets/largebutton.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.shade900,
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text('Transfer with Wally'),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.transparent),
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 17,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BankDestination()));
                },
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.transparent),
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.green.shade900,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black12),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Contact',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black26),
                      hintText: 'Enter phone number',
                      suffixIcon: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange.shade300),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all contact',
                          style: TextStyle(color: Colors.green.shade500),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('image/one.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Diana Russell',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '(480) 555 -0103',
                            style: TextStyle(color: Colors.black26),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Text(
                          'C B',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cody Banks',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '(406) 555 -0120',
                            style: TextStyle(color: Colors.black26),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Set amount',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'How much would you like to transfer ?',
                    style: TextStyle(color: Colors.black38, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      '\$130.00',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  const Divider(
                    thickness: 0.7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade100),
                        child: const Center(
                            child: Text(
                          '\$100.00',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade100),
                        child: const Center(
                            child: Text(
                          '\$250.00',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade100),
                        child: const Center(
                            child: Text(
                          '\$500.00',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  LargeButton(
                    text: 'Continue',
                    backgroundColor: Colors.green.shade400,
                    textColor: Colors.white,
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
