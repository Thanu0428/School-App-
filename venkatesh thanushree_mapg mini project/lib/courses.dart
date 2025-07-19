
import 'package:flutter/material.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/ba.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/ds.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/fms.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/hms.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/hs.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/soe.dart';

void main() => runApp(Courses());

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              backgroundColor: Colors.blueAccent,
              title: Row(
                children: [
                  const Text('NP Schools (S10223503)'),
                ],
              ),
              centerTitle: false,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop(); // Handle back navigation
                },
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlue, // Dark blue at the top
                  Colors.lightBlueAccent, // Light blue in the middle
                  Colors.white, // White at the bottom
                ],
                stops: [0.0, 0.5, 1.0],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('images/map.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Schools',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Builder(
                      builder: (context) => SizedBox(
                        width: 180, // Set a specific width for the button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BA(),
                              ),
                            );
                            var snackBar = SnackBar(
                              content: Text(
                                  'Thank you for visiting School of Business & Accountancy'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text('School of Business & Accountancy'),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => SizedBox(
                        width: 180, // Set a specific width for the button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DE(),
                              ),
                            );
                            var snackBar = SnackBar(
                              content: Text(
                                  'Thank you for visiting School of Design & Environment'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text('School of Design & Environment'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Builder(
                      builder: (context) => SizedBox(
                        width: 180, // Set a specific width for the button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FMS(),
                              ),
                            );
                            var snackBar = SnackBar(
                              content: Text(
                                  'Thank you for visiting School of Film & Media Studies'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text('School of Film & Media Studies'),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => SizedBox(
                        width: 180, // Set a specific width for the button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HS(),
                              ),
                            );
                            var snackBar = SnackBar(
                              content: Text(
                                  'Thank you for visiting School of Health Sciences'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text('School of Health Sciences'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Builder(
                      builder: (context) => SizedBox(
                        width: 180, // Set a specific width for the button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SOE(),
                              ),
                            );
                            var snackBar = SnackBar(
                              content: Text(
                                  'Thank you for visiting School of Engineering'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text('School of Engineering'),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => SizedBox(
                        width: 180, // Set a specific width for the button
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HMS(),
                              ),
                            );
                            var snackBar = SnackBar(
                              content: Text(
                                  'Thank you for visiting School of Humanities & Social Sciences'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text('School of Humanities & Social Sciences'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
