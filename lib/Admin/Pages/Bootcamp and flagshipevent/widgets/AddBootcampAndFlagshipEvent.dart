import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBootcampAndFlagshipEvent extends StatefulWidget {
  const AddBootcampAndFlagshipEvent({Key? key}) : super(key: key);

  @override
  State<AddBootcampAndFlagshipEvent> createState() =>
      _AddBootcampAndFlagshipEventState();
}

class _AddBootcampAndFlagshipEventState
    extends State<AddBootcampAndFlagshipEvent> {
  late TextEditingController eventNameController;
  late TextEditingController registrationEndDateController;
  late TextEditingController classStartDateController;
  late TextEditingController registrationFeeController;
  late TextEditingController groupLinkController;
  late TextEditingController descriptionController;
  late TextEditingController paymentProcessController;
  late TextEditingController termsAndConditionController;
  late TextEditingController typeController;

  @override
  void initState() {
    super.initState();
    eventNameController = TextEditingController();
    registrationEndDateController = TextEditingController();
    classStartDateController = TextEditingController();
    registrationFeeController = TextEditingController();
    groupLinkController = TextEditingController();
    descriptionController = TextEditingController();
    paymentProcessController = TextEditingController();
    termsAndConditionController = TextEditingController();
    typeController = TextEditingController();
  }

  @override
  void dispose() {
    eventNameController.dispose();
    registrationEndDateController.dispose();
    classStartDateController.dispose();
    registrationFeeController.dispose();
    groupLinkController.dispose();
    descriptionController.dispose();
    paymentProcessController.dispose();
    termsAndConditionController.dispose();
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
                // Event Name form field
                TextFormField(
                  controller: eventNameController,
                  decoration: InputDecoration(
                    labelText: "Event Name*",
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

                // Registration End Date form field
                TextFormField(
                  controller: registrationEndDateController,
                  decoration: InputDecoration(
                    labelText: "Registration End Date*",
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

                // Class Start Date form field
                TextFormField(
                  controller: classStartDateController,
                  decoration: InputDecoration(
                    labelText: "Class Start Date*",
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

                // Registration Fee form field
                TextFormField(
                  controller: registrationFeeController,
                  decoration: InputDecoration(
                    labelText: "Registration Fee*",
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

                // Group Link form field
                TextFormField(
                  controller: groupLinkController,
                  decoration: InputDecoration(
                    labelText: "Group Link*",
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
                  minLines: 1,
                  maxLines: 7,
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

                // Payment Process form field
                TextFormField(
                  controller: paymentProcessController,
                  minLines: 1,
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Payment Process*",
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

                // Terms and Condition form field
                TextFormField(
                  controller: termsAndConditionController,
                  minLines: 1,
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Terms and Condition*",
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
                  items: <String>["Bootcamp", "FlagshipEvent"]
                      .map<DropdownMenuItem<String>>((String value) {
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
