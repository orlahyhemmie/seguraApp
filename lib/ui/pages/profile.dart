import 'package:flutter/material.dart';
import 'package:segurapay/ui/widgets/iconborder.dart';
import 'package:segurapay/ui/widgets/imagepicker.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.green.shade900,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      IconContainer(
                        icon: Icons.square,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ImageUpload(),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bianca Cooper',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            '(480) 555 - 0103',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'bianca@example.com',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 10,
                        bottom: 10,
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Personal',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 200,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      iconSize: 17,
                      color: Colors.black54,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.green,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Privacy & Security',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 265,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      iconSize: 17,
                      color: Colors.black54,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.wallet_giftcard_rounded,
                      color: Colors.green,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Offers & Rewards',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 260,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      iconSize: 17,
                      color: Colors.black54,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.green,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Help',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 175,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      iconSize: 17,
                      color: Colors.black54,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.green,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Logout',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 200,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      iconSize: 17,
                      color: Colors.black54,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
