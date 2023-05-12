import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/iconborder.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Notification',
          ),
        ),
        backgroundColor: Colors.green.shade900,
        elevation: 0,
        leading: IconContainer(
          icon: Icons.arrow_back_ios,
          onTap: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'TODAY',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Mark as Read',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width - 65,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const IconContainer(
                                  icon: Icons.settings,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cashback 50%',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Get 50% cashback for the next top up',
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: const [
                                        Text(
                                          'Top up now',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.green,
                                          size: 11,
                                        )
                                      ],
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'YESTERDAY',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: const IconContainer(
                        icon: Icons.settings,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Daily Cashback',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '8.00AM',
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 18,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.lightGreen.shade100),
                        child: const Center(
                            child: Text(
                          'Promo',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'BLCK10',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Use BLCK10 Promo Code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3.40PM',
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 18,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.lightGreen.shade100),
                        child: Center(
                            child: Text(
                          'Promo',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: const IconContainer(
                        icon: Icons.settings,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Cyber Monday Deal',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '10.39AM',
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 18,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.lightGreen.shade100),
                        child: Center(
                            child: Text(
                          'Promo',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green.shade700,
                          borderRadius: BorderRadius.circular(10)),
                      child: const IconContainer(
                        icon: Icons.wallet,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '\$250 top up successfully added',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '6:14PM',
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 18,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.lightGreen.shade100),
                        child: const Center(
                            child: Text(
                          'Info',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'LAST 7 DAY',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.orange.shade400,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'NOV10',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Use NOV10 Promo Code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3.40PM',
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 18,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.lightGreen.shade100),
                        child: Center(
                            child: Text(
                          'Promo',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
