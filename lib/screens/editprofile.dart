import 'dart:io';
import 'package:flutter/material.dart';
import 'package:quality/const/colors.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  DateTime? _selectedDate;
  String _selectedGender = 'Male';
  XFile? _profileImage;

  @override
  void initState() {
    super.initState();
    _nameController.text = "User Name";
    _emailController.text = "user@example.com";
    _phoneController.text = "+1234567890";
    _streetController.text = "123 Street";
    _cityController.text = "City";
    _stateController.text = "State";
    _countryController.text = "Country";
    _aboutController.text =
        "User is a great enthusiast specilised designation and is associated with Med hospitals and he/she is experienced in this category ";
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _profileImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(automaticallyImplyLeading: false,
      //   // backgroundColor: primary,
      //   // leading: Padding(
      //   //   padding: const EdgeInsets.all(8.0),
      //   //   child: CircleAvatar(
      //   //     backgroundColor: Colors.white,
      //   //     child: Image.asset("images/midas_logo.png"),
      //   //   ),
      //   // ),
      //   // title: const Text(
      //   //   "Edit Profile",
      //   //   style: TextStyle(
      //   //     color: third,
      //   //     fontWeight: FontWeight.bold,
      //   //     fontSize: 22,
      //   //   ),
      //   // ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: _profileImage != null
                          ? FileImage(File(_profileImage!.path))
                          : const AssetImage('images/user.png') as ImageProvider,
                      child: const Icon(Icons.camera_alt,
                          color: Colors.white, size: 30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField('Name', _nameController),
              _buildTextField('Email', _emailController),
              _buildTextField('Phone Number', _phoneController),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Date of Birth',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    width: 95,
                  ),
                  Text(_selectedDate != null
                      ? DateFormat('dd/MM/yyyy').format(_selectedDate!)
                      : 'Select Date'),
                  IconButton(
                    onPressed: () => _selectDate(context),
                    icon: const Icon(Icons.calendar_today,color: second,),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: Text('Gender',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  DropdownButton<String>(
                    value: _selectedGender,
                    items: <String>['Male', 'Female', 'Other']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedGender = newValue!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildTextField('Street', _streetController),
              _buildTextField('City', _cityController),
              _buildTextField('State', _stateController),
              _buildTextField('Country', _countryController),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _aboutController,
                  maxLines: 4,
                  decoration: InputDecoration(
                      labelText: "About",
                      labelStyle: const TextStyle(color: second),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 18, color: third),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          labelText: label,
          labelStyle: const TextStyle(color: second),
        ),
      ),
    );
  }
}
