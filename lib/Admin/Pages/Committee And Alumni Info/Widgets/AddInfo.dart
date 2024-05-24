import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCommitteeAmulniInfo extends StatefulWidget {
  const AddCommitteeAmulniInfo({super.key});

  @override
  State<AddCommitteeAmulniInfo> createState() => _AddCommitteeAmulniInfoState();
}

class _AddCommitteeAmulniInfoState extends State<AddCommitteeAmulniInfo> {


  late TextEditingController nameController;
  late TextEditingController positionController;
  late TextEditingController photoUrlController;
  late TextEditingController idController;
  late TextEditingController phoneNumberController;
  late TextEditingController emailAddressController;
  late TextEditingController batchOrYearController;
  late TextEditingController descriptionController;
  late TextEditingController typeController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    positionController = TextEditingController();
    photoUrlController = TextEditingController();
    idController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailAddressController = TextEditingController();
    batchOrYearController = TextEditingController();
    descriptionController = TextEditingController();
    typeController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    positionController.dispose();
    photoUrlController.dispose();
    idController.dispose();
    phoneNumberController.dispose();
    emailAddressController.dispose();
    batchOrYearController.dispose();
    descriptionController.dispose();
    typeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Name form field
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name*",
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

                // Position form field
                TextFormField(
                  controller: positionController,
                  decoration: InputDecoration(
                    labelText: "Position*",
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

                // Photo URL form field
                TextFormField(
                  controller: photoUrlController,
                  decoration: InputDecoration(
                    labelText: "Photo URL*",
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

                // ID form field
                TextFormField(
                  controller: idController,
                  decoration: InputDecoration(
                    labelText: "ID*",
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

                // Phone Number form field
                TextFormField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                    labelText: "Phone Number*",
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

                // Email Address form field
                TextFormField(
                  controller: emailAddressController,
                  decoration: InputDecoration(
                    labelText: "Email Address*",
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

                // Batch or Year form field
                TextFormField(
                  controller: batchOrYearController,
                  decoration: InputDecoration(
                    labelText: "Batch or Year*",
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

                // Description form field
                TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: "Description*",
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

                // Type dropdown
                DropdownButtonFormField<String>(
                  value: null,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Type*",
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
                  items: <String>["Committee", "Alumni"].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle dropdown value change
                  },
                ),
                SizedBox(height: 20),

                // Additional fields...

                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: Text("Update"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff03438C),
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
