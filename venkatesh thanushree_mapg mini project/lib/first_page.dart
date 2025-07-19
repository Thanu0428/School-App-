import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/courses.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/eligibility.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/google_maps.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/survey.dart';

class AutoImageSlider extends StatefulWidget {
  @override
  _AutoImageSliderState createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  late String formattedDateTime;

  @override
  void initState() {
    super.initState();
    _updateDateTime();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _updateDateTime();
    });
  }

  void _updateDateTime() {
    setState(() {
      final DateTime now = DateTime.now();
      formattedDateTime =
          "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}:${now.second}";
    });
  }

  final List<String> images = [
    'images/image1.jpg',
    'images/image6.jpg',
    'images/images3.png',
    // Add more image URLs as needed
  ];

  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Row(
              children: [
                Image.asset(
                  'images/npname.png',
                  width: 100,
                ),
                const Text(
                  '       S10223503     ',
                  //textAlign: TextAlign.center,
                ),
                Text(
                  formattedDateTime,
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            centerTitle: false,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: MediaQuery.of(context).size.width / 300,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  height: 210,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: images.map((imageURL) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imageURL),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
                carouselController: _controller,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.map((url) {
                  int index = images.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? Colors.blue : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapSample()),
                            );
                          },
                          child: const Text('School Map')),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Courses()),
                            );
                          },
                          child: const Text('Our Courses')),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Survey()),
                            );
                          },
                          child: const Text('Survey')),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultDisplayPage()),
                            );
                          },
                          child: const Text(' Enquiry ')),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
