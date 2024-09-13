import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';
import 'package:quality/screens/editprofile.dart';
import 'package:quality/screens/login.dart';
import 'package:quality/screens/personal_details.dart';
import 'package:quality/screens/resetpassword.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          "Profile",
          style: TextStyle(
            color: third,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.sizeOf(context).width / 1,
                height: 170,
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
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PersonalDetails()));
                      },
                      child: _buildDutyCard(
                          'Personal Details', Icons.person, primary)),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfile()));
                  },child: _buildDutyCard('Edit Option', Icons.edit, primary)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Resetpassword()));
                  },child: _buildDutyCard('Reset Password', Icons.lock, primary)),
                  GestureDetector(onTap: () {
                    _showLogoutDialog(context);
                  },child: _buildDutyCard('Logout', Icons.logout, primary)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDutyCard(String title, IconData icon, Color color) {
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
            Icon(icon, size: 30, color: second),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: third,
              ),
            ),
          ],
        ),
      ),
    );
  }

   void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to logout?"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const UserLogin()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
