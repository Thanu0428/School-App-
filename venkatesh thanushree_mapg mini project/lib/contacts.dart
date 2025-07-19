import 'package:flutter/material.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/eligibility.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/first_page.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Contact> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? valueChoose;
  String? valueChoose1;
  String? valueChoose2;
  String FN = '';
  String LN = '';
  String Enquiry = '';
  String Email = '';
  List listItem = [
    'Prospective Student',
    'Applicant',
    'Parent',
    'Others',
  ];
  List listItem1 = [
    'Singapore Citizen',
    'Singapore Permanant Resident',
    'Foreigner',
  ];
  List listItem2 = [
    "GCE O'Level",
    'International Bacculaurate (IB) Diploma',
    "Singapore Cambridge GCE A'Level",
    "Diploma Awarded by Polytechnic or equivalent instituition",
    "NUSHS Diploma",
  ];
  final itemHolder = TextEditingController();
  final itemHolder1 = TextEditingController();
  final itemHolder2 = TextEditingController();
  final itemHolder3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Enquiry'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
              ),
              ListTile(
                title: Text('Eligibility'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultDisplayPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AutoImageSlider()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Row(
              children: [
                const Text('Enquiry (S10223503)'),
              ],
            ),
            centerTitle: false,
            // leading: IconButton(
            //   icon: Icon(Icons.arrow_back),
            //   onPressed: () {
            //     Navigator.of(context).pop(); // Handle back navigation
            //   },
            // ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300,
                width: 800,
                child: Image.asset(
                  'images/image7.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Enquiry Form',
                  style: TextStyle(fontSize: 32),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '   I am a/an*',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton(
                    //hint: Text('Select School'),
                    dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    value: valueChoose,
                    onChanged: (newValue) {
                      setState(() {
                        valueChoose = newValue as String?;
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '   Given Name*',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double
                      .infinity, // This ensures the Row takes the full width
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: itemHolder,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'First Name',
                          ),
                          onChanged: (value) {
                            setState(() {
                              FN = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Last Name',
                          ),
                          onChanged: (value) {
                            setState(() {
                              LN = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '   Email*',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: itemHolder1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //hintText: 'First Name',
                  ),
                  onChanged: (value) {
                    setState(() {
                      Email = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '   Nationality*',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton(
                    //hint: Text('Select School'),
                    dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    value: valueChoose1,
                    onChanged: (newValue) {
                      setState(() {
                        valueChoose1 = newValue as String?;
                      });
                    },
                    items: listItem1.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '   What is your current qualification level*',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton(
                    //hint: Text('Select School'),
                    dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    value: valueChoose2,
                    onChanged: (newValue) {
                      setState(() {
                        valueChoose2 = newValue as String?;
                      });
                    },
                    items: listItem2.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '  What is your enquiry*',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: itemHolder3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //hintText: 'Enter Value A',
                  ),
                  onChanged: (value) {
                    setState(() {
                      Enquiry = value;
                    });
                  },
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        if (valueChoose == null) {
                          _showErrorSnackbar('Role of applier is required.');
                        } else if (valueChoose1 == null) {
                          _showErrorSnackbar('Nationality is required.');
                        } else if (valueChoose2 == null) {
                          _showErrorSnackbar(
                              'Level of Qualification is required.');
                        } else if (FN.isEmpty || LN.isEmpty) {
                          _showErrorSnackbar('Given Name is required.');
                        } else if (Email.isEmpty) {
                          _showErrorSnackbar('Email is required.');
                        } else if (Enquiry.isEmpty) {
                          _showErrorSnackbar('Please State your enquiry.');
                        } else {
                          valueChoose = null;
                          valueChoose1 = null;
                          valueChoose2 = null;
                          itemHolder.clear();
                          itemHolder1.clear();
                          itemHolder2.clear();
                          itemHolder3.clear();
                        }
                      });
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
