import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';
import 'package:quality/screens/dash.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: primary, fontWeight: FontWeight.w900, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIconColor: second,
                        suffixIcon: Icon(Icons.person_outline_rounded),
                        labelText: 'Username',
                        labelStyle: TextStyle(color: second),
                        hintText: 'Username',
                        hintStyle: TextStyle(color: third),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIconColor: second,
                        suffixIcon: Icon(Icons.lock_outline),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: third),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: second),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23))),
                  )
                ],
              ),
            ),
            ElevatedButton(   
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14))),
                    iconColor: WidgetStatePropertyAll(Colors.grey),
                    fixedSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width / 1.2, 40)),
                    backgroundColor: WidgetStatePropertyAll(primary)),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Dash()));},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.login_outlined)
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            Image.asset('images/login.png')
          ],
        ),
      ),
    );
  }
}
