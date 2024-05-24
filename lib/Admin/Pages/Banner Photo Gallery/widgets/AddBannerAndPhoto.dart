import 'package:flutter/material.dart';

class AddBannerAndPhoto extends StatefulWidget {
  const AddBannerAndPhoto({Key? key}) : super(key: key);

  @override
  State<AddBannerAndPhoto> createState() => _AddBannerAndPhotoState();
}

class _AddBannerAndPhotoState extends State<AddBannerAndPhoto> {
  late TextEditingController photoUrlController;
  late TextEditingController typeController;

  @override
  void initState() {
    super.initState();
    photoUrlController = TextEditingController();
    typeController = TextEditingController();
  }

  @override
  void dispose() {
    photoUrlController.dispose();
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
                  items: <String>["Banner", "Photo Gallery", "Semester Calendar"].map<DropdownMenuItem<String>>((String value) {
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
