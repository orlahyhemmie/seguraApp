import 'package:flutter/material.dart';
import 'package:segurapay/ui/registration/reg.dart';
import 'package:segurapay/ui/widgets/largebutton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: 'Your Email',
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              decoration: const InputDecoration(
                suffixText: 'Forgot Password?',
                suffixStyle: TextStyle(
                  color: Colors.red,
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                labelText: 'Password',
              ),
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              autocorrect: false,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: LargeButton(
              onTap: () {},
              text: 'Login',
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
              const Text('New to Wpay?'),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Email(),
                      ));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          const Text('or cotinue with'),
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
                border: Border.all(color: Colors.black26)),
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
                        image: AssetImage('image/faceboo.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  'Login with Facebook',
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
                border: Border.all(color: Colors.black26)),
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
                  'Login with Google',
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
