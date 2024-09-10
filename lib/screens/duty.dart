import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';

class Duty extends StatefulWidget {
  const Duty({super.key});

  @override
  State<Duty> createState() => _DutyState();
}

class _DutyState extends State<Duty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset("images/midas_logo.png"),
          ),
        ),
        title: const Text(
          "Duty",
          style: TextStyle(
            color: third,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDutyCard('Duty Time', '09:00 AM - 06:00 PM'),
                _buildDutyCard('Duty Place', 'Building A, Room 12'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDutyCard('Break Time', '12:00 PM - 01:00 PM'),
                _buildDutyCard('Shifts', 'Morning / Evening'),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primary,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 12),
                    Text(
                      "Pending Works",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: third,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "7 Tasks Remaining",
                      style: TextStyle(
                        fontSize: 13,
                        color: second,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDutyCard(String title, String infoText) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width / 2.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [primary.withOpacity(0.9), primary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: third,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              infoText,
              style: const TextStyle(
                fontSize: 13,
                color: second,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
