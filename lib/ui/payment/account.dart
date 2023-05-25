import 'package:flutter/material.dart';
import 'package:segurapay/ui/payment/destination.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.shade900,
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text('Transfer with Bank'),
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
                          builder: (context) => BankDestination()));
                },
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.green.shade900,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(12),
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
                    height: 10,
                  ),
                  Text(
                    'Bank Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Select Bank',
                      labelText: 'Select Bank',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down_sharp)),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Account number',
                      labelText: 'Account number',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Set amount',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'How much would you like to transfer ?',
                    style: TextStyle(color: Colors.black38),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      '\$132.00',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                  ),
                  const SizedBox(
                    height: 10,
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
                        child: Center(
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
                        child: Center(
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
                        child: Center(
                            child: Text(
                          '\$500.00',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 180,
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
