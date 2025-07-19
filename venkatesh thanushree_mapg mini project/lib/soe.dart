import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(SOE());

class SOE extends StatefulWidget {
  const SOE({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<SOE> {
  static final aboutECE =
      'ECE will introduce you to the important fields of electronic engineering, as well as computer hardware and software.This Programe strives to build a strong foundation for students by helping them gain leading-edge skills and industry-relevant learning  with key partners such as Amazon Web Services (AWS), CISCO Systems, Micron and National Instruments. In addition students get the oppertunity  to attain relevant industry certifications such as AWS certified Cloud Practitioner through vacation bootcamps.';
  static final specECE =
      'Artificial Intelligence of Things (AIoT)\nMicroelectronics';
  static final modulesECE =
      'Level 1.1:\nEngineering Mathematics 1\n Electrical Engineering Fundamentals\n Mechanical Engineering Fundamentals\n Programming\n Statistical Applications for Business\n Engineering & Society \n Innovation Made Possible\n\n'
      'Level 1.2:\nEngineering Mathematics 2\n AC Circuits\n Analogue Electronics\n Digital Fundamentals\n Fundamental Electronic & Electrical Skills\n  Communication Essentials\n Health & Wellness \n\n'
      'Level 2.1:\nApplied Analogue Electronics\n Applied Digital Electronics\n Network Fundamentals\n Oject Oriented Programming\n Engineering & Sustainability\nWorld Issues: A Singapore Perspective\n\n'
      'Level 2.2:\nCommunication Systems\n Data Analytics\n Internet of Things\n Microcontroller & Interfacing \n Servers & Cloud Fundamentals\n\n'
      'Level 3.1:\nEmbedded Systems\n Project ID: Connecting the Dots\n ARTIFICIAL INTELLIGENCE of THINGS (AIOT) SPECIALISATION \nDecision-Making & Control for Business\n AI Applications\nIoT and Cloud Security\nMICROELECTRONICS SPECIALISATION\nSemiconductor Manufacturing\nIC Testing, Assembly & Packaging\nQuality and Reliability\n\n'
      'Level 3.2:\n6-Month Internship(Local/Overseas)\n Final Year Projects\n\n';

  static final careerECE =
      'Associate Embedded Systems Engineer\n Assistant IoT Solutions Engineer\nAssistant Equipment Engineer\nAssistant Process Engineer\nAssistant Product Engineer\n Assistant Quality Engineer\nAssistant Facility Engineer\n Assistant Integration Engineer\n';

  static final reqECE =
      'English Language	1-7\n Mathematics (Elementary/Additional)	1-6\nAny one of the following subjects 1-6:\n\n Biology\nBiotechnology\nChemistry\nComputing/Computer Studies\nDesign & Technology\nElectronics/Fundamentals of Electronics\nPhysics\nScience (Chemistry , Biology)\nScience (Physics, Biology)\nScience (Physics, Chemistry)\n';

  static final aboutBME =
      'The Diploma in Biomedical Engineering (BME) at Ngee Ann Polytechnic combines engineering and biology to address societal needs. This unique program focuses on the rapidly growing field of medical technology (MedTech). Students learn to design advanced medical devices, including personal health trackers and lifesaving equipment such as pacemakers and dialysis machines. The BME diploma, the first of its kind in Singapore, is a collaboration between Ngee Ann Polytechnic School of Engineering and industry partners. Beyond manufacturing processes, the program emphasizes research for the development of faster and more accurate tools in medical treatment.';
  static final specBME = 'NIL';
  static final modulesBME =
      'Level 1.1:\n Electrical Engineering Fundamentals\nEngineering & Society\nEngineering Mathematics 1\nEnglish Language Express\nInnovation Made Possible\nMechanical Engineering Fundamentals\nProgramming\n\n'
      'Level 1.2:\n AC Circuits\nAnalogue Electronics\nCommunication Essentials\nDigital Fundamentals\nEngineering Mathematics 2\nFundamental Electronic & Electrical Skills\nHealth & Wellness\n\n'
      'Level 2.1:\n Cell and Molecular Biology\Clinical Engineering\nCybersecurity Essentials\nEngineering & Sustainability\nFundamentals of Medical Technology\n\n'
      'Level 2.2:\n Engineering Skills Practice\nHuman Physiology\nMedical Technology Instrumentation\nNetwork & Informatics\nWorld Issues: A Singapore Perspective\n\n'
      'Level 3.1:\n Engineering Skills Practice\nHuman Physiology\nMedical Technology Instrumentation\nNetwork & Informatics\nWorld Issues: A Singapore Perspective\n\n'
      'Level 3.2:\n 6-Month Internship(Local/Overseas)\nor\nFinal Year Projects\n\n';

  static final careerBME =
      'Assistant Biomedical Engineer\nAssistant Equipment Engineer\nAssistant Product Engineer\nAssistant Process Enginee\nField Service Engineer\nQuality Assurance Specialist\nQuality Control Laboratory Analyst\nResearch Associate\nSales Engineer\n';
  static final reqBME =
      'English Language	                1-7\nMathematics (Elementary/Additional)	1-6\nAny one of the following subjects:      1-6\n\n Biology\nBiotechnology\nChemistry\nComputing/Computer Studies\nDesign & Technology\nElectronics/Fundamentals of Electronics\nPhysics\nScience (Chemistry , Biology)\nScience (Physics, Biology)\nScience (Physics, Chemistry)\n';
  //static final bstudies = '';
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
          title: const Text('School of Engineering (S10223503)'),
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
                'images/soe.png',
                // height: 300,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Why SOE',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'The School of Engineering (SOE) offers transformative learning with eight diplomas and a common engineering program, empowering students to be changemakers in their fields. Focused on core competencies and emerging technologies, the curriculum nurtures innovation. Students gain multidisciplinary skills for community-centric projects, collaborate on real-world AI and data analytics endeavors, and benefit from hands-on learning in cutting-edge facilities. SOE  also provides an accelerated university pathway, prestigious scholarships, and global readiness through internships. Strong industry ties offer a head start for graduates in dynamic careers.'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard(
                  'Electronic and Computer Engineering (ECE)',
                  'images/ece.jpg',
                  controller,
                  aboutECE,
                  specECE,
                  modulesECE,
                  careerECE,
                  reqECE),
              buildCard(
                  'Biomedical Engineering (BME)',
                  'images/bme.jpg',
                  controller1,
                  aboutBME,
                  specBME,
                  modulesBME,
                  careerBME,
                  reqBME),
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
