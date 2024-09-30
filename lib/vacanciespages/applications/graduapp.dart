import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class GraduApp extends StatefulWidget {
  const GraduApp({super.key});

  @override
  State<GraduApp> createState() => _GraduAppState();
}

class _GraduAppState extends State<GraduApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController qualificationsController = TextEditingController();

  File? _cvFile; // Variable to store the selected CV file

  void _openFileExplorer() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'doc',
        'docx'
      ], // Restricting file types to PDF, DOC, DOCX
    );

    if (result != null) {
      setState(() {
        _cvFile = File(result.files.single.path!);
      });
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('CV attached successfully'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _removeAttachment() {
    setState(() {
      _cvFile = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Apply"),
        ),
        body: Column(
          children: [
            Text(
              "Graduate Program Application Form,",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    controller: cityController,
                    decoration: InputDecoration(labelText: 'City'),
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    controller: countryController,
                    decoration: InputDecoration(labelText: 'Country'),
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    controller: zipController,
                    decoration: InputDecoration(labelText: 'ZIP/Postal Code'),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    controller: qualificationsController,
                    decoration: InputDecoration(labelText: 'Qualifications'),
                    maxLines: 3,
                  ),
                  SizedBox(height: 12.0),
                  _cvFile != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Attached CV:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8.0),
                            Text(_cvFile!.path),
                            SizedBox(height: 8.0),
                            Row(
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: _openFileExplorer,
                                  child: Text('Change CV'),
                                ),
                                SizedBox(width: 8.0),
                                ElevatedButton(
                                  onPressed: _removeAttachment,
                                  child: Text(
                                    'Remove',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : ElevatedButton(
                          onPressed: _openFileExplorer,
                          child: Text('Attach CV'),
                        ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement form submission functionality here
                      // You can access _cvFile for the attached CV file
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
