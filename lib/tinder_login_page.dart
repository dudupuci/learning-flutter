import 'package:flutter/material.dart';

class TinderLoginPage extends StatefulWidget {
  const TinderLoginPage({super.key});

  @override
  State<TinderLoginPage> createState() => _TinderLoginPageState();
}

class _TinderLoginPageState extends State<TinderLoginPage> {
  Widget tinderLoginPageBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/tinder-white-logo.png',
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                        text: "Find your ",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "love",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w900))
                  ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "Plugin app for Tinder.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15.0)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const SizedBox(
                width: 200,
                child: Row(
                  children: [
                    Icon(Icons.facebook),
                    SizedBox(width: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Login with Facebook",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: const Color.fromARGB(255, 60, 10, 0),
              ),
              onPressed: () {},
              child: const SizedBox(
                width: 200,
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Login with Email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.withOpacity(0.9),
        body: tinderLoginPageBody());
  }
}
