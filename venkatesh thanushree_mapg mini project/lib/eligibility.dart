import 'package:flutter/material.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/contacts.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResultDisplayPage(),
    );
  }
}

class ResultDisplayPage extends StatefulWidget {
  @override
  _ResultDisplayPageState createState() => _ResultDisplayPageState();
}

class _ResultDisplayPageState extends State<ResultDisplayPage> {
  String? resultText;
  List<Course> matchingCourses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Course (S10223503)'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  resultText = value;
                });
              },
              decoration:
                  InputDecoration(labelText: 'Enter your ELR2B2 result'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              int userResult = int.tryParse(resultText ?? '') ?? 0;
              matchingCourses = checkAndDisplayMatch(userResult);
              setState(() {});
            },
            child: Text('Check Courses'),
          ),
          if (matchingCourses.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: matchingCourses.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(matchingCourses[index].name),
                    subtitle: Text(
                        'Range: ${matchingCourses[index].range[0]} - ${matchingCourses[index].range[1]}'),
                  );
                },
              ),
            ),
        ],
      ),
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
                  MaterialPageRoute(builder: (context) => ResultDisplayPage()),
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
    );
  }
}

class Course {
  final String name;
  final List<int> range;

  Course({required this.name, required this.range});
}

List<Course> checkAndDisplayMatch(int userResult) {
  List<Course> matchingCourses = [];

  List<Course> allCourses = [
    Course(name: 'Biomedical Science', range: [3, 7]),
    Course(name: 'Chemical & Biomolecular Engineering', range: [8, 12]),
    Course(name: 'Common Science Programme', range: [5, 9]),
    Course(name: 'Environmental & Water Technology', range: [6, 15]),
    Course(name: 'Landscape Design & Horticulture', range: [4, 16]),
    Course(name: 'Pharmaceutical Science', range: [3, 9]),
    Course(name: 'Hotel & Leisure Facilities Management', range: [7, 17]),
    Course(name: 'Accountancy', range: [4, 12]),
    Course(name: 'Arts Business Management', range: [5, 12]),
    Course(name: 'Banking & Finance', range: [5, 10]),
    Course(name: 'Business Studies', range: [3, 8]),
    Course(name: 'Common Business Programme', range: [3, 12]),
    Course(name: 'International Trade & Business', range: [8, 13]),
    Course(name: 'Real Estate Business', range: [8, 14]),
    Course(name: 'Tourism & Resort Management', range: [10, 15]),
    Course(name: 'Aerospace Engineering', range: [9, 18]),
    Course(name: 'Mechatronics & Robotics', range: [6, 26]),
    Course(name: 'Biomedical Engineering', range: [6, 11]),
    Course(name: 'Common Engineering Programme', range: [7, 24]),
    Course(name: 'Electrical Engineering', range: [12, 24]),
    Course(name: 'Electronic & Computer Engineering', range: [5, 16]),
    Course(name: 'Engineering Science', range: [6, 11]),
    Course(name: 'Mechanical Engineering', range: [4, 26]),
    Course(name: 'Nursing', range: [6, 28]),
    Course(name: 'Optometry', range: [6, 13]),
    Course(name: 'Chinese Studies', range: [5, 12]),
    Course(name: 'Community Development', range: [5, 13]),
    Course(name: 'Early Childhood Development & Education', range: [5, 23]),
    Course(name: 'Tamil Studies with Early Education', range: [15, 20]),
    Course(name: 'Common ICT Programme', range: [3, 12]),
    Course(name: 'Cybersecurity & Digital Forensics', range: [3, 10]),
    Course(name: 'Data Science', range: [4, 10]),
    Course(name: 'Immersive Media', range: [5, 14]),
    Course(name: 'Information Technology', range: [5, 14]),
    Course(name: 'Marine & Offshore Technology', range: [14, 25]),
    Course(name: 'Chinese Media & Communication', range: [4, 13]),
    Course(name: 'Common Media Programme', range: [7, 12]),
    Course(name: 'Design', range: [4, 15]),
    Course(name: 'Film, Sound & Video', range: [3, 11]),
    Course(name: 'Mass Communication', range: [3, 8]),
    Course(name: 'Media Post-Production', range: [3, 13]),
  ];

  for (var course in allCourses) {
    if (userResult >= course.range[0] && userResult <= course.range[1]) {
      matchingCourses.add(course);
    }
  }

  return matchingCourses;
}

class CourseResultCheckerPage extends StatelessWidget {
  final List<Course> matchingCourses;

  CourseResultCheckerPage(this.matchingCourses);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matching Courses'),
      ),
      body: ListView.builder(
        itemCount: matchingCourses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchingCourses[index].name),
            subtitle: Text(
                'Range: ${matchingCourses[index].range[0]} - ${matchingCourses[index].range[1]}'),
          );
        },
      ),
    );
  }
}
