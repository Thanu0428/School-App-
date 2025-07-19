import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DE extends StatefulWidget {
  const DE({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<DE> {
  static final abouthlfm =
      'The Diploma in Hotel & Leisure Facilities Management (HLFM) seamlessly combines digitalization skills and green technologies, preparing you for leadership roles in smart hotels and sustainable facilities management. With real-world learning experiences, a tailored internship option, and internationally-recognized certifications, HLFM propels you into the forefront of dynamic industries. Embrace the future of hospitality and facilities management with HLFM.';
  static final spechlfm = 'NIL';
  static final moduleshlfm =
      'Level 1.1:\n DE Experience\n Electrical Facilities\n Hospitality Management\n Financial Accounting and Management\n Career and Professional Preparation for Hotel and Leisure Facilities Management\n\n'
      'Level 1.2:\n Data Analytics and Research\n Customer Experience Management\n Environmental Health and Workplace Safety\n Hospitality Business\n Mechanical Facilities\n\n'
      'Level 2.1:\n Smart Facilities Management\n Marketing and Consumer Behaviour\n Principles of Management\n Security Management and Business Continuity\n Shopping Mall and Strata Management\n\n'
      'Level 2.2:\n Building Technology\n Events Management\n Sustainable Building Systems\n Sustainable Building Systems\n Building Information Modelling\n\n'
      'Level 3.1:\n Project Planning and Management\n Building Maintenance and Asset Enhancement\n Hospitality Technology\n Fire Safety Management\n\n'
      'Level 3.2:\n 6-month internship\n 3-month internship\n\n';
  static final careerhlfm =
      'Catering & Service Executive\n Front Office Executive\n Guest Relations Executive\n Business Development Executive\n Events Operation Executive\n Public Relations Executive\n Sales & Marketing Executive\n Assistant Engineer\n Facility Officer/Executive\n Technical Executive\n';
  static final reqhlfm =
      'English Language 1-7\nMathematics (Elementary/Additional) 1-6\nAny one of the following subjects 1-6: \n\nBiology\nBiotechnology\nChemistry\nFood & Nutrition / Nutrition & Food Science\nPhysics\nScience (Chemistry, Biology)\nScience (Physics, Biology)\nScience (Physics, Chemistry)\n ';

  static final aboutreb =
      'The Real Estate Business (REB) diploma is the only polytechnic program specializing in real estate with a strong grounding in business fundamentals. Its unique focus on smart technology and sustainability equips you with sought-after skills. Learn from industry experts, gain professional certifications, and delve into asset management, valuation, land planning, and redevelopment. REB opens doors to exciting opportunities in business and real estate, allowing you to contribute to shaping future cities.';
  static final specreb = 'NIL';
  static final modulesreb =
      'Level 1.1:\n DE Experience\n Introduction to Real Estate & Sustainability\n Sustainable Building Technologies\n Environmental Services & Workplace Safety\n Career & Professional Preparation I\n\n'
      'Level 1.2:\n Global Business & Entrepreneurship\n Economics\n Financial Accounting & Management\n Principles of Law\n Data Analytics for Market Research\n\n'
      'Level 2.1:\n Project Management and Contact Administration\n Client Relationship Management\n Building Services & Maintenance\n Property Management\n\n'
      'Level 2.2:\n Urban Planning & Sustainability\n Property Valuation\n Real Estate Marketing\n Real Estate Law\n Career & Professional Preparation II\n\n'
      'Level 3.1:\n Real Estate Investment & Finance\n Fire Safety Management\n Building Diagnostics & Asset Enhancement\n\n'
      'Level 3.2:\n 6-Month Internship\n 3-Month Internship\n Final Year Project\n\n';
  static final careerreb =
      'Valuation Officer\n Property Finance & Loans Officer\n Real Estate Investment Executive\n Leasing Executive\n Planning Executive\n Property Management Executive\n Environment, Health and Safety Specialist\n Fire Safety Manager\n Workplace Safety Officer\n';
  static final reqreb =
      'English Language  1-7\nMathematics (Elementary/Additional)  1-6\nAny one  of the following subjects  1-6:\n\nBiology\nBiotechnology\nChemistry\nFood & Nutrition / Nutrition & Food Science\nPhysics\nScience (Chemistry, Biology)\nScience (Physics, Biology)\nScience (Physics, Chemistry)\n ';

  late ExpandableController controller;
  late ExpandableController controller1;

  @override
  void initState() {
    super.initState();

    controller = ExpandableController();
    controller1 = ExpandableController();
  }

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('School of Design & Environment(S10223503)'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Handle back navigation
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'images/DE.jpg',
                // height: 300,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Why DE',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'At Ngee Ann Poly\'s School of Design & Environment (DE), discover your potential to innovate and design creative solutions, enhancing the built environment with sustainability. Our diverse courses open doors to careers in architecture, construction, hospitality, and more. With a human-centered design approach and a tech focus, DE\'s etc.lab empowers communities through projects. Benefit from an industry-focused curriculum, gain certifications, and stand out with real-world projects and hackathons. Engage in masterclasses with industry experts, shine in competitions, and excel in your future career. Whether aspiring to be a designer, architect, or specialist, DE is the ideal school for limitless possibilities!',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard(
                  'Diploma in Hotel & Leisure Facilities Management (HLFM)',
                  'images/hlfm.jpg',
                  controller,
                  abouthlfm,
                  spechlfm,
                  moduleshlfm,
                  careerhlfm,
                  reqhlfm),
              buildCard(
                  'Diploma in Real Estate Business(REB)',
                  'images/reb.jpg',
                  controller1,
                  aboutreb,
                  specreb,
                  modulesreb,
                  careerreb,
                  reqreb),
              // buildCard1('Electronic and Computer Engineering (ECE)',
              //     'images/ece.jpg', controller1, accountancy),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
          String title,
          String urlImage,
          ExpandableController controller,
          String aboutus,
          String spec,
          String modules,
          String careers,
          String req) =>
      ExpandableNotifier(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => controller.toggle(),
                  child: Image.asset(
                    urlImage,
                    width: 500,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                ScrollOnExpand(
                  child: ExpandablePanel(
                    controller: controller,
                    theme: ExpandableThemeData(
                      expandIcon: Icons.arrow_downward,
                      collapseIcon: Icons.arrow_upward,
                      tapBodyToCollapse: true,
                      tapBodyToExpand: true,
                    ),
                    header: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    collapsed: Text(
                      'Find Out More!',
                      style: TextStyle(fontSize: 18),
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '\n\nAbout Us\n',
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          aboutus,
                          textAlign: TextAlign.left,
                          //softWrap: true,
                        ),
                        Text(
                          '\n\nSpecialisations Offered\n',
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          spec,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '\n\nModules\n',
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          modules,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '\n\nCareers\n',
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          careers,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '\n\nEntry Requirements\n',
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          req,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    builder: (_, collapsed, expanded) => Padding(
                      padding: EdgeInsets.all(10).copyWith(top: 0),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
