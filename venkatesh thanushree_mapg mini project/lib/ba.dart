import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(BA());

class BA extends StatefulWidget {
  const BA({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<BA> {
  static final aboutACC =
      'Unlock your potential with the Diploma in Accountancy (ACC) at Ngee Ann Polytechnic. Master corporate finance, assurance, and business partnership roles through our tailored "Professional Journey." This forward-looking program integrates digital skills and sustainability knowledge, offering pathways like the one-year JobReady Programme for flexibility. Enjoy accreditation and module exemptions, enhancing your readiness for diverse career options. ACC goes beyond traditional accounting, teaching you to translate business data into actionable insights. In today\'s dynamic business landscape, financial experts play a crucial role in evaluating risks and identifying opportunities. ACC ensures you\'re well-prepared for the future, blending digital skills and sustainability concepts for a successful accounting career.';
  static final specACC = 'NIL';
  static final modulesACC =
      'Level 1.1:\nEconomics\n Global Business\n Makings of a Business\n Programming for Business\n Statistical Applications for Business\n Health & Wellness\n Innovation Made Possible\n\n'
      'Level 1.2:\nBusiness Communication 1\n Business Law\n Kickstart a Business\n Finance & Accounting for Business\n  User-Centred Design for Business\n Career & Professional Preparation\n\n'
      'Level 2.1:\nCompany Law & Secretarial Practice\n Digitalisation & Data Analytics 1\n Financial Accounting\n Singapore Taxation\n World Issues: A Singapore Perspective\n\n'
      'Level 2.2:\nAssurance, Risk & Forensic Accounting\n Business Communication 2\n Corporate Reporting\n Digitalisation & Data Analytics 2\n\n'
      'Level 3.1:\nAdvanced Corporate Reporting & Sustainability\n Corporate Finance\n Decision-Making & Control for Business\n Project ID: Connecting The Dots\n\n'
      'Level 3.2:\n6-Month Internship\n Ethics for the Professional Accountant\n\n';
  static final careerACC =
      'Business Advisor\n Business Analyst\n Environment, Social & Governance (ESG) Auditor\n Financial Accountant\n Financial Accountant\n Financial Auditor\n Internal Auditor\n Management Accountant\n Sustainability Data Specialist\n Tax Associate\n ';

  static final reqACC =
      'English Language 1-6\nMathematics (Elementary/Additional) 1-6\nAny one of the 2nd group of Relevant Subjects for the ELR2B2-B Aggregate Type 1-6 \n\n';

  static final aboutITB =
      'Explore the global media landscape with the Diploma in Chinese Media & Communication (CMC) at Ngee Ann Polytechnic. This bilingual course shapes you into a versatile content producer for both global and regional Chinese markets. Gain digital media skills applicable across platforms, broadening your career scope. Collaborate on real-world projects with industry leaders like Our Grandfather Story, Mediacorp, and SPH. Choose a 1-year internship or a 6-month internship with project work or elective modules in your final year to enhance your skills. Dive into the thriving Chinese media industry, meeting the demand for engaging content globally and locally, utilizing your bilingual proficiency.';
  static final specITB = 'NIL';
  static final modulesITB =
      'Level 1.1:\nEconomics\n Global Business\n Makings of a Business\n Programming for Business\n Statistical Applications for Business\n Health & Wellness\n Innovation Made Possible\n\n'
      'Level 1.2:\nBusiness Communication 1\n Business Law\n Kickstart a Business\n Finance & Accounting for Business\n User-Centred Design for Business\n Career & Professional Preparation\n\n'
      'Level 2.1:\nBusiness Communication 2\n Business Optimisation Project\n International Procurement & Supply Management\n Supply Chain Technology & Sustainability 1\n Warehouse & Fulfillment Management\n\n'
      'Level 2.2:\nBusiness Improvement Project\n Supply Chain Technology & Sustainability 2\n Global Trade & Forwarding Management\n Global Transportation Management\n Global Transportation Management\n World Issues: A Singapore Perspective\n\n'
      'Level 3.1:\nBusiness Transformation Project\n International Marketing & Customer Management\n Supply Chain Solutioning\n Supply Chain Technology & Sustainability 3\n Project ID: Connecting The Dots\n\n'
      'Level 3.2:\n6-Month Internship\n\n';
  static final careerITB =
      'Explore a dynamic educational journey through Ngee Ann Polytechnic\'s Diploma in International Trade & Business (ITB). This unique program delves into the thriving domains of wholesale trade and logistics, aligning with the dynamic landscape of global e-commerce. Immerse yourself in hands-on learning with sponsored integrated projects and capstone initiatives alongside industry partners. Acquire practical experience through a six-month local or overseas internship or opt for the one-year JobReady Programme. Stay ahead of the curve by honing skills in sustainability and technology seamlessly integrated into the curriculum. Delve into the intricacies of international trade practices and supply chain management, preparing for success in the ever-evolving global trade sector.';
  static final reqITB =
      'English Language 1-6\nMathematics (Elementary/Additional) 1-6\nAny one of the 2nd group of Relevant Subjects for the ELR2B2-B Aggregate Type 1-6 \n\n';

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
          title: const Text('School of Business and Accountancy(S10223503)'),
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
                'images/BA.jpg',
                //width: 300,
                //height: 300,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Why BA',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Ngee Ann\'s School of Business & Accountancy (BA) offers a future-ready curriculum, integrating sustainability concepts and digital skills into all courses. The gamified learning experience in the first year focuses on foundational business knowledge. School of BA provides 5 courses and 1 common business programme after which students can specialize. Students can customize their learning with diverse specializations and pathways, including the JobReady Programme and internships. Industry exposure is enriched through projects, workshops, and mentorship with partners like DBS, KPMG, and GIC. BA prepares graduates for success in diverse business roles with a focus on practical skills and industry relevance.'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard('Accountancy(ACC)', 'images/BS-hero.png', controller,
                  aboutACC, specACC, modulesACC, careerACC, reqACC),
              buildCard(
                  'Interbational Trade & Busines (ITB)',
                  'images/cmc.jpg',
                  controller1,
                  aboutITB,
                  specITB,
                  modulesITB,
                  careerITB,
                  reqITB),
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
