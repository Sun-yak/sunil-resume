import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sunil_resume/resume.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Future postData(var body) async {
    Uri url = Uri.parse("https://sunilnayak.com/submit-company-data");
    var res = await http.post(url, body: body);
    if (res.statusCode == 200) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: const Text("Success"),
              content: Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                    "Thank you for submitting your information,I will be back as soon as possible."),
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Resume(),
                          ));
                    },
                    child: const Text("Go to Home Page."))
              ]),
        );
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Something went wrong")));
      }
    }
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController _companyName = TextEditingController();
  TextEditingController _companyEmail = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _jobDescription = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a Snack bar.
      postData({
        'name': _companyName.text,
        'email': _companyEmail.text,
        'phoneNumber': _phoneNumber.text,
        'jobDescription': _jobDescription.text
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Form'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 677),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      controller: _companyName,
                      decoration: InputDecoration(
                        labelText: 'Company Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter company name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _companyEmail,
                      decoration: InputDecoration(
                        labelText: 'Company Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter company email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _phoneNumber,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _jobDescription,
                      decoration: InputDecoration(
                        labelText: 'Job Description',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      maxLines: 3,
                      keyboardType: TextInputType.multiline,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter job description';
                        }
                        return null;
                      },
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: _submitForm,
                          child: const Text('Submit'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
