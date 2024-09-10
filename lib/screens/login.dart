import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          child: Card(
            shadowColor: third,
            surfaceTintColor: second,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
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
                        height: 20,
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
                        iconColor: WidgetStatePropertyAll(Colors.grey),
                        fixedSize: WidgetStatePropertyAll(Size(150, 20)),
                        backgroundColor: WidgetStatePropertyAll(primary)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.login_outlined)
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
