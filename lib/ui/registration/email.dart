import 'package:flutter/material.dart';
import 'package:segurapay/ui/registration/reg.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Image(
                image: AssetImage('image/one.png'),
                height: 70,
                width: 70,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Your Email',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('By creating an account, you accept our Terms'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: LargeButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Password(),
                    ));
              },
              text: 'Continue',
              backgroundColor: Colors.green[500],
              textColor: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 180,
          ),
          const Text(
            'or cotinue with',
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(13),
                ),
                border: Border.all(color: Colors.black12)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 35,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 20,
                        color: Colors.white10,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('image/faceboo.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  'Sign Up with Facebook',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(13),
                ),
                border: Border.all(color: Colors.black12)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 35,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 20,
                        color: Colors.white12,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('image/google.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  'Sign Up with Google',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
