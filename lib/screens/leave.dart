import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';
import 'package:fl_chart/fl_chart.dart';

class Leave extends StatefulWidget {
  const Leave({super.key});

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          // backgroundColor: primary,
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 7),
          //   child: CircleAvatar(
          //       backgroundColor: Colors.white,
          //       child: Image.asset("images/midas_logo.png")),
          // ),
          // title: const Column(
          //   children: [
          //     Text("Alexander",
          //         style: TextStyle(fontSize: 18, color: Colors.white)),
          //     Padding(
          //       padding: EdgeInsets.only(right: 45),
          //       child: Text(
          //         "MBBS",
          //         style: TextStyle(fontSize: 14, color: Colors.white),
          //       ),
          //     )
          //   ],
          // ),
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.notifications_sharp,
          //         color: Colors.white,
          //       ))
          // ],
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color.fromARGB(155, 138, 246, 217),
                ),
                child: Column(
                  children: [
                    const Text(
                      'ANNUAL LEAVES',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primary),
                    ),
                    const Row(
                      children: [
                        Text('TOTAL LEAVES :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,                     
                                color: Colors.blue))
                      ],
                    ),
                    const Row(
                      children: [
                        Text('LEAVES TAKEN :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red))
                      ],
                    ),
                    SizedBox(
                      height: 160,
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: Colors.blue,
                              // value: 40,
                              radius: 50,
                            ),
                            PieChartSectionData(
                              color: Colors.red,
                              // value: 20,
                              radius: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color.fromARGB(155, 138, 246, 217),
                ),
                child: Column(
                  children: [
                    const Text(
                      'REMAINING LEAVES',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primary),
                    ),
                    const Row(
                      children: [
                        Text('Medical Leaves:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: second))
                      ],
                    ),
                    const Row(
                      children: [
                        Text('Casual Leaves:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: primary))
                      ],
                    ),
                    const Row(
                      children: [
                        Text('Unpaid:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red))
                      ],
                    ),
                    SizedBox(
                      height: 160,
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: primary,
                              value: 20,
                              radius: 50,
                            ),
                            PieChartSectionData(
                              color: second,
                              value: 10,
                              radius: 40,
                            ),
                            PieChartSectionData(
                              color: Colors.red,
                              value: 10,
                              radius: 60,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 119, 133, 212))),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Leaveform()));
                },
                child: const Text(
                  'APPLY FOR LEAVE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
