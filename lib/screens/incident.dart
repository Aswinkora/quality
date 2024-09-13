import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class Incident extends StatefulWidget {
  const Incident({super.key});

  @override
  State<Incident> createState() => _IncidentState();
}

class _IncidentState extends State<Incident> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  final List<String> type = [];
  XFile? file;
  final picker = ImagePicker();

  Future<void> _pickImageFromCamera() async {
    if (await Permission.camera.request().isGranted) {
      final XFile? image = await picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        setState(() {
          file = image;
        });
      }
    }
  }

  void onchange(String? newlocation) {
    setState(() {});
  }

  Future<void> _selecttime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      final now = DateTime.now();
      final time = DateTime(
          now.year, now.month, now.day, pickedTime.hour, pickedTime.minute);
      String formattedTime = DateFormat('HH:mm').format(time);
      setState(() {
        _timeController.text = formattedTime;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        _dateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('INCIDENT ',
              style: TextStyle(
                  color: primary, fontSize: 30, fontWeight: FontWeight.w900)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Text(
                      'Location : ',
                      style: TextStyle(
                          color: primary,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIconColor: second,
                          prefixIcon: const Icon(Icons.location_on_outlined),
                          hintText: 'Location',
                          hintStyle: const TextStyle(color: third),
                          labelText: 'Location',
                          labelStyle: const TextStyle(color: primary),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text('Date :  ',
                        style: TextStyle(
                            color: primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _dateController,
                        decoration: InputDecoration(
                            labelText: 'Select Date',
                            prefixIcon: const Icon(Icons.calendar_today),
                            prefixIconColor: second,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13))),
                        readOnly: true,
                        onTap: () => _selectDate(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text('Time : ',
                        style: TextStyle(
                            color: primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _timeController,
                        decoration: InputDecoration(
                            labelText: 'Select Time',
                            prefixIcon: const Icon(Icons.access_time),
                            prefixIconColor: second,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13))),
                        readOnly: true,
                        onTap: () => _selecttime(),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text('Type :',
                        style: TextStyle(
                            color: primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: 'Type',
                        hintStyle: const TextStyle(color: third),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                      ),
                      items: type.map((typ) {
                        return DropdownMenuItem(value: typ, child: Text(typ));
                      }).toList(),
                      onChanged: onchange,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text('Incident : ',
                        style: TextStyle(
                            color: primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                    Expanded(
                        child: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: '  Describe the incident...',
                        hintStyle: const TextStyle(color: third),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _pickImageFromCamera();
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: third, borderRadius: BorderRadius.circular(23)),
                    child: file == null
                        ? const Icon(Icons.camera_alt_outlined)
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(23),
                            child: Image.file(
                              File(file!.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                        iconColor: const WidgetStatePropertyAll(Colors.grey),
                        fixedSize: WidgetStatePropertyAll(
                            Size(MediaQuery.of(context).size.width / 1.3, 40)),
                        backgroundColor: const WidgetStatePropertyAll(primary)),
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
