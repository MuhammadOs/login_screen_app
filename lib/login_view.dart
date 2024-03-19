import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPassword = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Screen App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Codeplayon",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Username',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              keyboardType: TextInputType.name,
              onFieldSubmitted: (String value) {
                debugPrint(value);
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Forget password",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.blue,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 200.0, vertical: 10),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account ? ',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Text('Sign Up',
                        style: TextStyle(color: Colors.blue, fontSize: 16))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
