// import 'package:flutter/material.dart';
// import 'package:quality/const/colors.dart';
// import 'package:quality/screens/dash.dart';

// class UserLogin extends StatefulWidget {
//   const UserLogin({super.key});

//   @override
//   State<UserLogin> createState() => _UserLoginState();
// }

// class _UserLoginState extends State<UserLogin> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(
//               'Login',
//               style: TextStyle(
//                   color: primary, fontWeight: FontWeight.w900, fontSize: 30),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Column(
//                 children: [
//                   Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         TextFormField(
//                           decoration: InputDecoration(
//                               suffixIconColor: second,
//                               suffixIcon: Icon(Icons.person_outline_rounded),
//                               labelText: 'Username',
//                               labelStyle: TextStyle(color: second),
//                               hintText: 'Username',
//                               hintStyle: TextStyle(color: third),
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(23))),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(
//                               suffixIconColor: second,
//                               suffixIcon: Icon(Icons.lock_outline),
//                               hintText: 'Password',
//                               hintStyle: TextStyle(color: third),
//                               labelText: 'Password',
//                               labelStyle: TextStyle(color: second),
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(23))),
//                         ),
//                         ElevatedButton(
//                             style: ButtonStyle(
//                                 shape: WidgetStatePropertyAll(
//                                     RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(14))),
//                                 iconColor: WidgetStatePropertyAll(Colors.grey),
//                                 fixedSize: WidgetStatePropertyAll(Size(
//                                     MediaQuery.of(context).size.width / 1.2,
//                                     40)),
//                                 backgroundColor:
//                                     WidgetStatePropertyAll(primary)),
//                             onPressed: () {
//                               Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => Dash()));
//                             },
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'LOGIN',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 Icon(Icons.login_outlined)
//                               ],
//                             )),
//                         Container(
//                           padding: EdgeInsets.only(top: 100),
//                           height: 200,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage("images/background.png"),
//                                 fit: BoxFit.fitHeight),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            suffixIconColor: second,
                            suffixIcon: const Icon(Icons.person_outline_rounded),
                            labelText: 'Username',
                            labelStyle: const TextStyle(color: second),
                            hintText: 'Username',
                            hintStyle: const TextStyle(color: third),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23))),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            suffixIconColor: second,
                            suffixIcon: const Icon(Icons.lock_outline),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: third),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: second),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23))),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                        iconColor: const WidgetStatePropertyAll(Colors.grey),
                        fixedSize: WidgetStatePropertyAll(
                            Size(MediaQuery.of(context).size.width / 1.3, 40)),
                        backgroundColor: const WidgetStatePropertyAll(primary)),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Dash()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.login_outlined)
                      ],
                    )),
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/login.png"),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
