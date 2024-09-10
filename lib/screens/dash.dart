import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';
import 'package:quality/screens/leave.dart';
import 'package:quality/screens/profile.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
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
          "Dashboard",
          style: TextStyle(
            color: third,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.sizeOf(context).width / 1,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: primary),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'GOOD DAY',
                    //   style: TextStyle(
                    //     fontSize: 28,
                    //     color: third,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('images/user.png'),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: third,
                                ),
                              ),
                              Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          child: _buildDashboardCard(
                              'Duty', Icons.work_outline, primary)),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Leave()));
                          },
                          child: _buildDashboardCard(
                              'Leave', Icons.beach_access, primary)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDashboardCard(
                          'Salary', Icons.monetization_on_outlined, primary),
                      _buildDashboardCard(
                          'Incidence', Icons.warning_amber_rounded, primary),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard(String title, IconData icon, Color color) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width / 2.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 35, color: second),
            SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: third,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
