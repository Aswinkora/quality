import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quality/const/colors.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: const Color.fromARGB(255, 22, 94, 229)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'GOOD DAY',
                        style: TextStyle(
                            fontSize: 30,
                            color: third,
                            fontWeight: FontWeight.w900),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'USER NAME',
                            style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(161, 125, 217, 192),
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
