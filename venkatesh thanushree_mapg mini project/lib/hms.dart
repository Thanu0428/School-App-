import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(HMS());

class HMS extends StatefulWidget {
  const HMS({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<HMS> {
  static final aboutBM =
      'Embark on a transformative journey with the Diploma in Arts Business Management (ABM) at Ngee Ann Polytechnic. Gain essential skills to lead impactful transformations in the arts, culture, and heritage sectors. Through real-world learning and industry projects, build a strong portfolio and professional network. The broad-based curriculum, covering creative arts, heritage, and event management, opens doors to diverse career options. In your final year, choose a 1-year internship for hands-on experience or a blend of a 6-month internship, project work, or elective modules to broaden your skill sets. Ideal for those passionate about planning arts events or working in galleries, museums, performing arts, or heritage organizations, ABM combines an appreciation for various creative art forms with business and management skills. Exciting industry visits and project opportunities with reputable partners enrich your educational journey.';
  static final specBM = 'NIL';
  static final modulesBM =
      'Level 1.1:\nAcademic Communication & Thinking\n Essential Skills for the Digital Age\n Introduction to Arts & Heritage Management\n Introduction to the Arts 1: Music & Visual Art\n Economics\n Career & Professional Preparation 1\n\n'
      'Level 1.2:\nWorkplace Communication Skills\n Introduction to the Arts 2: Theatre & Dance\n Education, Outreach & Community Arts\n Visual Communication\n Innovation Made Possible\n Health & Wellness\n\n'
      'Level 2.1:\nCareer Kickstart\n Arts Marketing & Communication\n Festival & Event Management\n Partnership Engagement & Volunteer Development\n Research in Audience Development\n\n'
      'Level 2.2:\nArts Regulation, Policy & Governance\n Creative Entrepreneurship\n Financial Management\n Talent & Human Capital Management\n Stage & Exhibition Management\n World Issues: Singapore\'s Perspectives\n\n'
      'Level 3.1:\n6-Month Internship\n\n'
      'Level 3.2:\nProject ID: Connecting the Dots\n\n Description of ELECTIVE MODULES\n Extended Internship\n Industry-based Project\n Social Sustainability\n Frameworks for Solutioning\n Understanding Social Challenges\n Understanding Place-Based Challenges\n Communicating to Create Social Change\n\n';
  static final careerBM =
      'Arts Administrator\n Artist Manager\n Events Executive\n Education and Outreach Executive\n Marketing Executive\n Programme Executive/Manager\n ';
  static final reqBM =
      'English Language 1-6\nMathematics (Elementary/Additional) 1-6\nAny one of the 2nd group of Relevant Subjects for the ELR2B2-B Aggregate Type 1-6 \n\n';

  static final aboutCMC =
      'Explore the global media landscape with the Diploma in Chinese Media & Communication (CMC) at Ngee Ann Polytechnic. This bilingual course shapes you into a versatile content producer for both global and regional Chinese markets. Gain digital media skills applicable across platforms, broadening your career scope. Collaborate on real-world projects with industry leaders like Our Grandfather Story, Mediacorp, and SPH. Choose a 1-year internship or a 6-month internship with project work or elective modules in your final year to enhance your skills. Dive into the thriving Chinese media industry, meeting the demand for engaging content globally and locally, utilizing your bilingual proficiency.';
  static final specCMC = 'NIL';
  static final modulesCMC =
      'Level 1.1:\n Academic Communication & Thinking\n Speech Communication in Chinese\n Media Writing in Chinese\n Storytelling with Visuals\n Publication Design & Production\n Health & Wellness\n\n'
      'Level 1.2:\n Workplace Communication Skills\n Audience Research\n Fundamentals of Translation\n Radio and Vodcast Production in Chinese\n UI & UX Design\n Innovation Made Possible\n\n'
      'Level 2.1:\n Career Kickstart\n Digital Journalism in Chinese\n Video Production\n Integrated Marketing Communication\n New Media in Southeast Asia\n\n'
      'Level 2.2:\n Media Ethics & Regulation\n Chinese History & Literature\n Feature Production\n Digital Marketing & Advertising\n World Issues: Singapore\'s Perspective\n\n'
      'Level 3.1:\n 6-Month Internship\n\n'
      'Level 3.2:\n Project ID: Connecting the Dots\n\n Description of ELECTIVE MODULES\n Extended Internship\n Industry-based Project\n Social Sustainability\n Frameworks for Solutioning\n Understanding Social Challenges\n Understanding Place-Based Challenges\n Communicating to Create Social Change\n Digital Strategies for Social Change\n\n';
  static final careerCMC =
      'Assistant Producer\n Content Producer\n Junior Designer\n Marketing Communications Executive\n Radio Presenter\n Radio Producer\n Reporter\n Video Editor\n Video Journalist\n TV Producer\n ';
  static final reqCMC =
      'English Language 1-6\nhigher Chinese 1-2\nOR\nChinese 1-3\nAny one of the 2nd group of Relevant Subjects for the ELR2B2-B Aggregate Type 1-6 \n\n';

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
          title:
              const Text('School of Humanities and Social Sciences(S10223503)'),
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
                'images/hms.jpg',
                //width: 300,
                //height: 300,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Why HMS',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The School of Humanities & Social Sciences (HMS) is a leading institution offering practical education in arts and social sciences at the polytechnic level in Singapore. Renowned for pioneering impactful diplomas, HMS inspires young changemakers with a curriculum fostering big ideas and practical skills. Embrace experiential learning through a rigorous curriculum, hands-on projects, field trips, internships, and overseas programs. Collaborate on cross-disciplinary projects, gaining diverse perspectives and industry readiness. Engage in community-building through The Living Community, HMS\'s social impact accelerator. Recognized by government agencies, HMS provides scholarships, grants, and state-of-the-art facilities, ensuring you\'re well-equipped for success in arts, business, education, and media.',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard('Arts Business Management(ABM)', 'images/abm.jpg',
                  controller, aboutBM, specBM, modulesBM, careerBM, reqBM),
              buildCard(
                  'Chinese Media & Communication (CMC)',
                  'images/cmc.jpg',
                  controller1,
                  aboutCMC,
                  specCMC,
                  modulesCMC,
                  careerCMC,
                  reqCMC),
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
