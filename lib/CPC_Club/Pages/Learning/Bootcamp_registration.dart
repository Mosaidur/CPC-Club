import 'dart:convert';
// import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../CustomSnackbar.dart';
import '../../Models/register_data_To.dart';
import '../../loading_page.dart';
// import '../../../CustomSnackbar.dart';
// import '../../../Models/Profile/Insert_profile_info.dart';
// import '../../../Models/register_data_To.dart';
// import '../../../loading_page.dart';


class BootcampRegistration extends StatefulWidget {

  final String? Name;
  final String? studentId;
  final String? PhoneNo;
  final String? UniversityEmail;
  final String? Department;
  final String? batch;
  final String? Section;
  final String? TshirtSize;
  final String? paymentMethod;
  final String? paymentNo;
  final String? paymentTransectionId;
  final String? AnyQuarry;


  const BootcampRegistration({
    Key? key,

    this.Name,
    this.studentId,
    this.PhoneNo,
    this.UniversityEmail,
    this.Department,
    this.batch,
    this.Section,
    this.TshirtSize,
    this.paymentMethod,
    this.paymentNo,
    this.paymentTransectionId,
    this.AnyQuarry,
  }) : super(key: key);

  @override
  State<BootcampRegistration> createState() => _BootcampRegistrationState();
}

class _BootcampRegistrationState extends State<BootcampRegistration> {


  late SharedPreferences sprefs;
  String? UserID;
  String? userName;

  // Create TextEditingController variables for the provided information
  late TextEditingController nameController;
  late TextEditingController studentIdController;
  late TextEditingController universityEmailController;
  late TextEditingController contactNoController;
  late TextEditingController tshirtSizeController;
  late TextEditingController batchController;
  late TextEditingController sectionController;
  late TextEditingController departmentController;
  late TextEditingController paymentMobileNoController;
  late TextEditingController paymentMethodController;
  late TextEditingController paymentTransectioIdController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    studentIdController = TextEditingController();
    universityEmailController = TextEditingController();
    contactNoController = TextEditingController();
    tshirtSizeController = TextEditingController();
    batchController = TextEditingController();
    sectionController = TextEditingController();
    departmentController = TextEditingController();
    paymentMobileNoController = TextEditingController();
    paymentMethodController = TextEditingController();
    paymentTransectioIdController = TextEditingController();
    _loadUserData();
  }

  @override
  void dispose() {
    nameController.dispose();
    studentIdController.dispose();
    universityEmailController.dispose();
    contactNoController.dispose();
    tshirtSizeController.dispose();
    batchController.dispose();
    sectionController.dispose();
    departmentController.dispose();
    paymentMobileNoController.dispose();
    paymentMethodController.dispose();
    paymentTransectioIdController.dispose();
    super.dispose();
  }

  Future<void> _loadUserData() async {
    sprefs = await SharedPreferences.getInstance();
    setState(() {
      UserID = sprefs.getString("USERID");
      userName = sprefs.getString("USERNAME");
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _loadUserData();
  //   Pre_Update_value();
  // }
  //
  //
  // Future<void> updatePersonalInfo () async {
  //   LoadingPage();
  //
  //   const String apiUrl = 'http://10.0.2.2/JobSeeker_EmpAPI/Parsonal%20Info%20API/Update_personal_info.php';
  //
  //   try {
  //     final response = await http.post(
  //       Uri.parse(apiUrl),
  //       headers: {'Content-Type': 'application/x-www-form-urlencoded'},
  //       body: {
  //         'user_id': UserID,
  //         'P_Details_Id': widget.pDetailsId.toString(),
  //         'father_name': fatherNameController.text.toString(),
  //         'mother_name': motherNameController.text.toString(),
  //         'date_of_birth': dateOfBirthController.text.toString(),
  //         'religion': religionController.text.toString(),
  //         'gender': genderController.text.toString(),
  //         'marital_status': maritalStatusController.text.toString(),
  //         'nationality': nationalityController.text.toString(),
  //         'nid': nidController.text.toString(),
  //         'passport_no': passportNoController.text.toString(),
  //         'passport_issue_date': passportIssueDateController.text.toString(),
  //         'blood_group': bloodGroupController.text.toString(),
  //       },
  //     );
  //
  //     if (response.statusCode == 200)  {
  //       final Map<String, dynamic> responseData = json.decode(response.body);
  //       final Response = ResponseDataModel.fromJson(responseData);
  //
  //       if (Response.success == true ) {
  //         // Show success message
  //         CustomSnackBar.show(
  //           context,
  //           message: '${Response.message}',
  //           backgroundColor: Colors.green.shade400,
  //           actionLabel: 'Successful',
  //           iconData: Icons.done,
  //           onActionPressed: () {
  //             Navigator.of(context).pop(); // or any other action
  //           },
  //         );
  //       } else {
  //         // Show error message
  //         CustomSnackBar.show(
  //           context,
  //           message: 'Update Response: ${Response.message}',
  //           backgroundColor: Colors.red.shade400,
  //           actionLabel: 'Error!',
  //           iconData: Icons.error,
  //           onActionPressed: () {
  //             Navigator.of(context).pop(); // or any other action
  //           },
  //         );
  //       }
  //     } else {
  //       // Handle other HTTP status codes
  //       CustomSnackBar.show(
  //         context,
  //         message: 'Response Error: ${response.statusCode}. Try again.',
  //         backgroundColor: Colors.red.shade400,
  //         actionLabel: 'Error!',
  //         iconData: Icons.error,
  //         onActionPressed: () {
  //           Navigator.of(context).pop(); // or any other action
  //         },
  //       );
  //     }
  //   } catch (e) {
  //     // Handle exceptions
  //     print('Exception occurred: $e');
  //     CustomSnackBar.show(
  //       context,
  //       message: 'Exception occurred: $e',
  //       backgroundColor: Colors.red.shade400,
  //       actionLabel: 'Error!',
  //       iconData: Icons.error,
  //       onActionPressed: () {
  //         Navigator.of(context).pop(); // or any other action
  //       },
  //     );
  //   }
  // }
  //
  //
  // Future<void> insertPersonalInfo() async {
  //   LoadingPage();
  //   const apiUrl = 'http://10.0.2.2/JobSeeker_EmpAPI/Parsonal%20Info%20API/insert_personal_info.php';
  //   try {
  //     final response = await http.post(
  //       Uri.parse(apiUrl),
  //       headers: {'Content-Type': 'application/x-www-form-urlencoded'},
  //       body: {
  //         'user_id': UserID,
  //         'father_name': fatherNameController.text.toString(),
  //         'mother_name': motherNameController.text.toString(),
  //         'date_of_birth': dateOfBirthController.text.toString(),
  //         'religion': religionController.text.toString(),
  //         'gender': genderController.text.toString(),
  //         'marital_status': maritalStatusController.text.toString(),
  //         'nationality': nationalityController.text.toString(),
  //         'nid': nidController.text.toString(),
  //         'passport_no': passportNoController.text.toString(),
  //         'passport_issue_date': passportIssueDateController.text.toString(),
  //         'blood_group': bloodGroupController.text.toString(),
  //       },
  //     );
  //
  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> responseData = json.decode(response.body);
  //       if (responseData['success']) {
  //         Future.delayed(Duration.zero, () {
  //           CustomSnackBar.show(
  //             context,
  //             message: 'Data inserted successfully.',
  //             backgroundColor: Colors.green.shade400, // Set your desired background color
  //             actionLabel: 'Successful.',
  //             iconData: Icons.done,
  //             onActionPressed: () {
  //               // Handle action press
  //               Navigator.of(context).pop; // or any other action
  //             },
  //           );
  //         });
  //
  //       } else {
  //         print('Failed to insert data: ${responseData['message']}');
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to insert data: ${responseData['message']}')));
  //
  //         Future.delayed(Duration.zero, () {
  //           CustomSnackBar.show(
  //             context,
  //             message: 'Failed to insert data: ${responseData['message']}.',
  //             backgroundColor: Colors.red.shade400, // Set your desired background color
  //             actionLabel: 'Error!',
  //             iconData: Icons.error,
  //             onActionPressed: () {
  //               // Handle action press
  //               Navigator.of(context).pop; // or any other action
  //             },
  //           );
  //         });
  //
  //       }
  //     } else {
  //       Future.delayed(Duration.zero, () {
  //         CustomSnackBar.show(
  //           context,
  //           message: 'Failed to insert data. Error: ${response.statusCode}.',
  //           backgroundColor: Colors.red.shade400, // Set your desired background color
  //           actionLabel: 'Error!',
  //           iconData: Icons.error,
  //           onActionPressed: () {
  //             // Handle action press
  //             Navigator.of(context).pop; // or any other action
  //           },
  //         );
  //       });
  //
  //     }
  //   } catch (error) {
  //     Future.delayed(Duration.zero, () {
  //       CustomSnackBar.show(
  //         context,
  //         message: 'Error: $error.',
  //         backgroundColor: Colors.red.shade400, // Set your desired background color
  //         actionLabel: 'Error!',
  //         iconData: Icons.error,
  //         onActionPressed: () {
  //           // Handle action press
  //           Navigator.of(context).pop; // or any other action
  //         },
  //       );
  //     });
  //   }
  // }
  //
  // void _insertPersonalInfo() {
  //   if (_validateForm()){
  //     insertPersonalInfo();
  //   }
  // }
  //
  // void _updatePersonalInfo() {
  //   if (_validateForm()){
  //     updatePersonalInfo();
  //   }
  // }
  //
  // bool _validateForm() {
  //   if (fatherNameController.text.isEmpty ||
  //       motherNameController.text.isEmpty ||
  //       dateOfBirthController.text.isEmpty ||
  //       religionController.text.isEmpty ||
  //       genderController.text.isEmpty ||
  //       maritalStatusController.text.isEmpty ||
  //       nationalityController.text.isEmpty ||
  //       nidController.text.isEmpty ||
  //       passportNoController.text.isEmpty ||
  //       passportIssueDateController.text.isEmpty ||
  //       bloodGroupController.text.isEmpty) {
  //
  //     Future.delayed(Duration.zero, () {
  //       CustomSnackBar.show(
  //         context,
  //         message: 'Please fill all fields.',
  //         backgroundColor: Colors.red.shade400, // Set your desired background color
  //         actionLabel: 'Error!',
  //         iconData: Icons.error,
  //         onActionPressed: () {
  //           // Handle action press
  //           Navigator.of(context).pop; // or any other action
  //         },
  //       );
  //     });
  //     return false;
  //   }else{
  //     return true;
  //   }
  //
  // }
  //
  // void Pre_Update_value() {
  //   if (widget.pDetailsId != null) {
  //     fatherNameController = TextEditingController(text: widget.father_name);
  //     motherNameController = TextEditingController(text: widget.mother_name);
  //     dateOfBirthController = TextEditingController(text: widget.dateOfBirth);
  //     religionController = TextEditingController(text: widget.religion);
  //     genderController = TextEditingController(text: widget.gender);
  //     maritalStatusController = TextEditingController(text: widget.marital_status);
  //     nationalityController = TextEditingController(text: widget.nationality);
  //     nidController = TextEditingController(text: widget.nid);
  //     passportNoController = TextEditingController(text: widget.passport_no);
  //     passportIssueDateController = TextEditingController(text: widget.passport_issue_date);
  //     bloodGroupController = TextEditingController(text: widget.blood_group);
  //   }else{
  //     fatherNameController = TextEditingController();
  //     motherNameController = TextEditingController();
  //     dateOfBirthController = TextEditingController();
  //     religionController = TextEditingController();
  //     genderController = TextEditingController();
  //     maritalStatusController = TextEditingController();
  //     nationalityController = TextEditingController();
  //     nidController = TextEditingController();
  //     passportNoController = TextEditingController();
  //     passportIssueDateController = TextEditingController();
  //     bloodGroupController = TextEditingController();
  //   }
  // }

  String? _selectedPaymentMethod  ;
  String? _selectedTshirtSize;
  String? _selectedmaritalStatus;
  String? _selectebloodGroup;

  DateTime selectedDate = DateTime.now();
  //
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(1952),
  //     lastDate: DateTime(2101),
  //   );
  //
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //       dateOfBirthController.text = "${picked.toLocal()}".split(' ')[0];
  //     });
  //   }
  // }
  //
  // Future<void> _selectpassportIssueDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(1952),
  //     lastDate: DateTime(2101),
  //   );
  //
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //       passportIssueDateController.text = "${picked.toLocal()}".split(' ')[0];
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // (widget.pDetailsId == null)?
              // Text(" ") :
              Text("Course Title"),

              // InkWell(
              //   onTap: (){},
              //   child: Icon(Icons.edit_note_sharp),
              // )
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Name form field
                TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(100)],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Name can't be empty";
                    }
                    if (text.length < 3) {
                      return "Please enter a valid Name";
                    }
                    if (text.length > 99) {
                      return "Name can't be more than 100 characters";
                    }
                    return null;
                  },
                  onChanged: (text) => setState(() {
                    nameController.text = text;
                  }),
                  controller: nameController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Name*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Student ID form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(20),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Student ID can't be empty";
                    }
                    if (text.length < 3) {
                      return "Please enter a valid Student ID";
                    }
                    if (text.length > 19) {
                      return "Student ID can't be more than 20";
                    }
                  },
                  onChanged: (text) => setState(() {
                    studentIdController.text = text;
                  }),
                  controller: studentIdController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Student ID*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // University Email form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(100),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "University Email can't be empty";
                    }
                  },
                  onChanged: (text) => setState(() {
                    universityEmailController.text = text;
                  }),
                  controller: universityEmailController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "University Email*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Contact No form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(15),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Contact No can't be empty";
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(text)) {
                      return "Please enter a valid Contact No";
                    }
                  },
                  onChanged: (text) => setState(() {
                    contactNoController.text = text;
                  }),
                  controller: contactNoController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Contact No*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Batch form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Batch can't be empty";
                    }
                    if (text.length < 1) {
                      return "Please enter a valid Batch";
                    }
                    if (text.length > 9) {
                      return "Batch can't be more than 10";
                    }
                  },
                  onChanged: (text) => setState(() {
                    batchController.text = text;
                  }),
                  controller: batchController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Batch*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Section form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(5),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Section can't be empty";
                    }
                    if (text.length < 1) {
                      return "Please enter a valid Section";
                    }
                    if (text.length > 4) {
                      return "Section can't be more than 5";
                    }
                  },
                  onChanged: (text) => setState(() {
                    sectionController.text = text;
                  }),
                  controller: sectionController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Section*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Department form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(100),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Department can't be empty";
                    }
                    if (text.length < 3) {
                      return "Please enter a valid Department";
                    }
                    if (text.length > 99) {
                      return "Department can't be more than 100";
                    }
                  },
                  onChanged: (text) => setState(() {
                    departmentController.text = text;
                  }),
                  controller: departmentController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Department*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Tshirt Size form field
                DropdownButtonFormField<String>(
                  value: /*(widget.pDetailsId != null) ? widget.blood_group :*/ null,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "T-shirt Size*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  items: <String>[
                   "M","L","XL","XXL","3XL","Free Size",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedPaymentMethod = newValue!;
                      paymentMethodController.text = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),

                // Payment Method form field
                DropdownButtonFormField<String>(
                  value: /*(widget.pDetailsId != null) ? widget.blood_group :*/ null,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Payment Method*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  items: <String>[
                    "Bkash", "Nagad", "Rocket","Upay","Hand Cash", "Bank",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedPaymentMethod = newValue!;
                      paymentMethodController.text = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),

                // Payment Mobile No form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(15),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Payment Mobile No can't be empty";
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(text)) {
                      return "Please enter a valid Payment Mobile No";
                    }
                  },
                  onChanged: (text) => setState(() {
                    paymentMobileNoController.text = text;
                  }),
                  controller: paymentMobileNoController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Payment Mobile No*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Payment Transaction ID form field
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(50),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return "Payment Transaction ID can't be empty";
                    }
                    if (text.length < 3) {
                      return "Please enter a valid Payment Transaction ID";
                    }
                    if (text.length > 49) {
                      return "Payment Transaction ID can't be more than 50";
                    }
                  },
                  onChanged: (text) => setState(() {
                    paymentTransectioIdController.text = text;
                  }),
                  controller: paymentTransectioIdController,
                  enabled: true,
                  decoration: InputDecoration(
                    labelText: "Payment Transaction ID*",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff03438C),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    // if (widget.pDetailsId == null) {
                    //   if (_validateForm() == true) {
                    //     Navigator.pop(context);
                    //     _insertPersonalInfo();
                    //   }
                    // } else {
                    //   if (_validateForm() == true) {
                    //     Navigator.pop(context);
                    //     _updatePersonalInfo();
                    //   }
                    // }
                  },
                  child: /*(widget.pDetailsId == null) ? Text("Submit") : */ Text("Update"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff03438C), // Change this color to your desired color
                  ),
                ),

                SizedBox(height: 50),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
