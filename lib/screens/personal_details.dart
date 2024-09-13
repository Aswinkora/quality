import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';



class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        // backgroundColor: primary,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     backgroundColor: Colors.white,
        //     child: Image.asset("images/midas_logo.png"),
        //   ),
        // ),
        // title: const Text(
        //   "Personal Details",
        //   style: TextStyle(
        //     color: third,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 22,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Profile section
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: primary,
                ),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/user.png'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            fontSize: 18,
                            color: third,
                          ),
                        ),
                        Text(
                          'User Name',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '(Designation)',
                          style: TextStyle(
                            fontSize: 18,
                            color: second,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoSection(
              context,
              title: "Contact Details",
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(Icons.phone, '91 88695 99999'),
                  const SizedBox(height: 10),
                  _buildInfoRow(Icons.mail, 'username@gmail.com'),
                  const SizedBox(height: 10),
                  _buildInfoRow(
                      Icons.place, '123, Medical Street,\nHealthy City, Wellness Country'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoSection(
              context,
              title: "About",
              content: const Text(
                "User is a great enthusiast specializing in their designation. "
                "Associated with Med hospitals and experienced in the field, "
                "they bring valuable skills to their role.",
                style: TextStyle(color: third),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context, {required String title, required Widget content}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          content,
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: second, size: 24),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(color: third, fontSize: 16),
        ),
      ],
    );
  }
}
