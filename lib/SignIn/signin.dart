import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:developer' as developer;

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    // final double currentWidth = MediaQuery.of(context).size.width;
    return Center(
        child: Column(children: [
      const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(' Welcome to Amico',
              style: TextStyle(fontSize: 25, color: Colors.red))),
      const Text(
        //currentWidth.toString(),
        'See the Amioco\'s World!',
        style: TextStyle(fontSize: 13, color: Colors.grey),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
          padding:
              const EdgeInsets.only(left: 10, bottom: 10, right: 5, top: 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: 'ID',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )),
      Padding(
          padding:
              const EdgeInsets.only(left: 10, bottom: 60, right: 5, top: 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: 'Password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                //Todo - google firebase login function
                debugPrint("google login btn clicked");
              },
              icon: Image.asset(
                "assets/images/google_circle.png",
              ),
              iconSize: 65,
            ),
            IconButton(
              onPressed: () {
                //Todo - kakao firebase login function
                debugPrint("kakao login btn clicked");
              },
              icon: Image.asset("assets/images/kakao_circle.png",
                  width: 100, height: 100),
              iconSize: 65,
            ),
            IconButton(
              onPressed: () {
                //Todo - guest firebase login function
                debugPrint("guest login btn clicked");
              },
              icon: Image.asset("assets/images/guest_circle.png",
                  width: 100, height: 100),
              iconSize: 65,
            )
          ],
        ),
      ),
      const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text('서비스를 이용하려면 로그인을 해주세요.',
              style: TextStyle(fontSize: 17, color: Colors.black))),
      const Text(
        //currentWidth.toString(),
        '게스트로 로그인시 문제가 발생했을 때 도움을 드리기가 어렵습니다.',
        style: TextStyle(
          shadows: [Shadow(color: Colors.grey, offset: Offset(0, -5))],
          fontSize: 10,
          color: Colors.transparent,
          decoration: TextDecoration.underline,
          decorationThickness: 5,
          decorationStyle: TextDecorationStyle.dashed,
        ),
        textAlign: TextAlign.center,
      ),
    ]));
  }
}
