import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quality/const/colors.dart';
import 'package:quality/screens/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("images/splash.json",height: 350,width: 350),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Employee Self ',
                      style: TextStyle(
                          color: primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Service',
                      style: TextStyle(
                          color: second,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ],
            ),
           
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'POWERDBY',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'DOC',
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  'MEDS',
                  style: TextStyle(
                      color: second, fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
