import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(FMS());

class FMS extends StatefulWidget {
  const FMS({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<FMS> {
  static final aboutMPP =
      'A Media Post Production Diploma is a dynamic gateway to honing skills in video editing, sound design, and visual effects. The industry-relevant curriculum, coupled with hands-on experience, prepares graduates for versatile roles in media and entertainment. Focused on innovation and collaboration, the program fosters creative expression and personal growth, equipping individuals with a strong portfolio and connections for a successful career in media post-production.';
  static final specMPP = 'NIL';
  static final modulesMPP =
      'Level 1.1:\nIntroduction to Film & Media\nMedia Writing & Storytelling\nVideo Production\nMotion Graphics\nIntegrated Marketing Communications\nCareer & Professional Preparation I\n\n'
      'Level 1.2:\nPost-Production Fundamentals\nIntroduction to Production Management\nStudio Production\nAudio Production\nExploring Contemporary Issues\nHealth & Wellness\nInnovation Made Possible\n\n'
      'Level 2.1:\n3D Motion Graphics\nCG Fundamentals\nLighting\nLive Sound\nCareer & Professional Preparation II\nWorld Issues: A Singapore Perspective\n\n'
      'Level 2.2:\nAudio Post-Production\nVirtual Production\nLivestream Production\nProjection Mapping 1\nVideo Post-Production\n\n'
      'Level 3.1:\nProjection Mapping 2\nCapstone Project\nProject ID: Connecting The Dots\n\n'
      'Level 3.2:\nLocal/Overseas Internship\n\n';

  static final careerMPP =
      '2D/3D Artist\nAssistant Designer\nAssistant Producer\nEvents Crew\nFloor Manager\nJunior Animator\nJunior Graphics Designer\nLighting Specialist\nMotion Graphics Artist\nPost-Production Assistant\nProduction Assistant\nStage Crew Technician\nSound Designer\nSound Editor\nSound Recordist\nVideo Editor\nVision Mixer\n\n';
  static final reqMPP =
      'English Language	 1-6\nMathematics (Elementary / Additional)  1-7\nAny one of the 1st group of Relevant Subjects for the ELR2B2-A Type   1-6\n';

  static final aboutMCM =
      'NP Media Communication program provides a transformative experience. Led by industry-connected faculty, the curriculum offers hands-on learning in media production and journalism. Internships and networking events provide real-world exposure, while a versatile skill set prepares you for diverse careers in media. Emphasis on innovation and access to modern facilities ensures a dynamic learning journey, setting the stage for success in the evolving field of media communication.';
  static final specMCM = 'NIL';
  static final modulesMCM =
      'Level 1.1:\nIntroduction to Film & Media\nMedia Writing & Storytelling\nVideo Production\nMotion Graphics\nIntegrated Marketing Communications\nCareer & Professional Preparation I\n\n'
      'Level 1.2:\nVisual Communication\nFundamentals of Reporting\nRadio Production 1\nAdvertising\nPublic Relations\n'
      'Level 2.1:\nContent Marketing\nDigital Journalism\nStudio Production\nInteraction Design\nContemporary Media Issues\n'
      'Level 2.2:\nFeature Writing\nRadio Production 2\nDigital Marketing & Analytics\nUser Experience Design\nCareer & Professional Preparation 2\nWorld Issues: A Singapore Perspective\n'
      'Level 3.1:\nMedia Entrepreneurship\nCapstone Project\nProject ID: Connecting The Dots\n\n'
      'Level 3.2:\nLocal/Overseas Internship\n\n';

  static final careerMCM =
      'Advertising Executive\nContent Producer\nCorporate Communications Executive\nJournalist\nMarketing Communications Specialist\nProducer\nPresenter\nPublic Relations Specialist\nResearch Executive\nSocial Media Content Specialist\nSub-Editor\nUI/UX Designer\nUX Writer\nOr start your own business like the founders of Krei Digital!\n ';
  static final reqMCM =
      'English Language	 1-4\nMathematics (Elementary/Additional)	1-7\n\n';

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
          title: const Text('School of Film and Media Studies (S10223503)'),
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
                'images/fms.jpg',
                // height: 300,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Why FMS',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'As the first and most established media course in Singapore, we hold high regard within the industry. Our broad-based curriculum provides real-world exposure, shaping students into versatile multi-platform media practitioners. With the largest network of successful media alumni, both locally and overseas, we offer exciting internships and exclusive mentorship opportunities. Get career-ready in our immersive learning environment featuring industry-standard facilities.',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard('Media Post Production (MPP)', 'images/mpp.jpg',
                  controller, aboutMPP, specMPP, modulesMPP, careerMPP, reqMPP),
              buildCard(
                  'Media Communication (MCM)',
                  'images/mcm.jpg',
                  controller1,
                  aboutMCM,
                  specMCM,
                  modulesMCM,
                  careerMCM,
                  reqMCM),
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
