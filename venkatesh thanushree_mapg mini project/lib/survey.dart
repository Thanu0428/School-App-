import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  Survey({Key? key}) : super(key: key);

  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final schoolnameController = TextEditingController();
  final courseController = TextEditingController();
  final impressionController = TextEditingController();
  final textController = TextEditingController();
  final mobileController = TextEditingController();
  String? _radioItem;
  var info = false;
  int age = 16;

  @override
  Widget build(BuildContext context) {
    initializeFirebase();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Survey (S10223503)',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Name*',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    // hintText: "Name:",
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              Text(
                'Age*',
                style: TextStyle(fontSize: 20),
              ),
              Slider(
                value: age.toDouble(),
                min: 16,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    age = value.round();
                  });
                },
                divisions: 82,
                label: age.toString(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Email*',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    //hintText: "Email:",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Contact Number*',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: mobileController,
                decoration: InputDecoration(
                    //hintText: "Email:",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Name of Secondary School/ITE*',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: schoolnameController,
                decoration: InputDecoration(
                    //hintText: "Secondary School Name/ITE?",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Impression of Ngee Ann Polytechnic*',
                  style: TextStyle(fontSize: 20)),
              TextField(
                controller: textController,
                decoration: InputDecoration(
                    //hintText: "What do you think about Ngee Ann Polytechnic?",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Which School are you interested in',
                  style: TextStyle(fontSize: 20)),
              RadioListTile<String>(
                  title: const Text('School of Engineering'),
                  value: 'SOE',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text('School of Business and Accountancy'),
                  value: 'BA',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text('School of Design and Environment'),
                  value: 'DE',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text('School of Film and Media Studies'),
                  value: 'FMS',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text('School of Health Sciences'),
                  value: 'HS',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text('School of Humanities and Social Sciences'),
                  value: 'HMS',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text('School of Infocomm Technology'),
                  value: 'IT',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }),
              RadioListTile<String>(
                  title: const Text(
                      'School of Life Sciences and Chemical Technology'),
                  value: 'LSCT',
                  groupValue: _radioItem,
                  onChanged: (value) {
                    setState(() {
                      _radioItem = value!;
                    });
                  }), // ... (RadioListTile widgets)
              SizedBox(
                height: 20,
              ),
              Text(
                'Interested Course From Chosen School*',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: courseController,
                decoration: InputDecoration(
                    // hintText: "Interested Course(Max: 3)?",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Reason For Selected Course*',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: impressionController,
                decoration: InputDecoration(
                    //hintText: "Course Impressions?",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: info,
                onChanged: (bool? newValue) {
                  setState(() {
                    info = newValue! ? true : false;
                  });
                },
                title: const Text(
                  '      I agree to receive messages and emails from Ngee Ann Polytechnic',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  CollectionReference collRef =
                      FirebaseFirestore.instance.collection('client');
                  collRef.add({
                    'name': nameController.text,
                    'email': emailController.text,
                    'schoolname': schoolnameController.text,
                    'courses': courseController.text,
                    'impressions': impressionController.text,
                    'np': textController.text,
                    'age': age,
                    'preferred_school': _radioItem,
                    'SMS/Email': info,
                    'mobile_no': mobileController.text,
                  });
                  setState(() {
                    nameController.clear();
                    emailController.clear();
                    schoolnameController.clear();
                    courseController.clear();
                    impressionController.clear();
                    textController.clear();
                    age = 16;
                    _radioItem = null;
                    info = false;
                    mobileController.clear();
                  });
                },
                child: Text("Submit"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _navigateBack(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> initializeFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: "AIzaSyDDfMKw7pXvfErauJ9x-9hCJJ7moeVIiMg",
          appId: "1:243639991559:web:d7e7da8f1659751ffe59a2",
          messagingSenderId: "243639991559",
          projectId: "survey-firebase-9bba3",
        ),
      );
    }
  }

  void _navigateBack(BuildContext context) {
    Navigator.pop(context); // Go back to the MainScreen
  }
}
