import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/iconborder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Image(
                      image: AssetImage('image/one.png'),
                      width: 40,
                      height: 40,
                    ),
                    IconContainer(
                      icon: Icons.settings,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello Andre,',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Your account balance',
                        style: TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                  const Text(
                    '\$15,901',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.compare_arrows_outlined,
                                  color: Colors.white,
                                )),
                            const Text(
                              'Transfer',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.wallet_sharp,
                                  color: Colors.white,
                                )),
                            const Text(
                              'Top Up',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.history,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'History',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Payment List',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      IconContainer(
                        icon: Icons.electric_bolt,
                      ),
                      Text('Electricity')
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      IconContainer(
                        icon: Icons.wifi,
                      ),
                      Text('Internet'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      IconContainer(
                        icon: Icons.receipt,
                      ),
                      Text('Voucher'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      IconContainer(
                        icon: Icons.luggage,
                      ),
                      Text('Assurance'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        IconContainer(
                          icon: Icons.shopping_cart,
                        ),
                        Text('merchant')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        IconContainer(
                          icon: Icons.phone_android,
                        ),
                        Text('Mobile '),
                        Text('Credit')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        IconContainer(
                          icon: Icons.receipt,
                        ),
                        Text('Bill'),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        IconContainer(
                          icon: Icons.menu,
                        ),
                        Text('More'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Promo & Discount',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'See More',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 170.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                          width: 350.0,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green.shade900),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '30% OFF',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Black Friday deal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.orange.shade200),
                        width: 350.0,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
