import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quality/const/colors.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  final TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _nameController.text = "User name";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // backgroundColor: primary,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     backgroundColor: Colors.white,
        //     child: Image.asset("images/midas_logo.png"),
        //   ),
        // ),
        // title: const Text(
        //   "Reset Password",
        //   style: TextStyle(
        //     color: third,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 22,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Lottie.asset("images/reset.json",  width: 300, // Adjust the size
                height: 300,
                ),
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: second,
                    ),
                    labelText: "User name",
                    labelStyle: const TextStyle(color: second),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: second,
                    ),
                    prefixIcon: const Icon(
                      Icons.password,
                      color: second,
                    ),
                    labelText: "Password",
                    labelStyle: const TextStyle(color: second),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
             Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: second,
                    ),
                    prefixIcon: const Icon(
                      Icons.password,
                      color: second,
                    ),
                    labelText: " Confirm Password",
                    labelStyle: const TextStyle(color: second),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),const SizedBox(height: 25,),
            SizedBox(
              height: 45,
              width: MediaQuery.sizeOf(context).width/1.6,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  // textStyle: TextStyle(color: Colors.white)
                ),
                child: const Text("Save Changes",style: TextStyle(color: third,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
