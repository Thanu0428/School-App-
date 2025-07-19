import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(HS());

class HS extends StatefulWidget {
  const HS({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<HS> {
  static final aboutNurs =
      'The Diploma in Nursing (NSG) stands accredited by the Singapore Nursing Board, offering a comprehensive journey into healthcare professionalism. With 32 weeks of clinical training from the first year, students gain real-world practice, increasing their proficiency in critical thinking and problem-solving. The program uniquely facilitates job placement through hospital sponsorship with monthly allowances, fostering early career stability. Graduates not only emerge as registered nurses but are also well-prepared for diverse opportunities in healthcare, pharmaceuticals, and biomedical industries globally. Additionally, the diploma opens doors for further studies and specializations at esteemed local and international universities.';
  static final specNurs = 'NIL';
  static final modulesNurs =
      'Level 1.1:\nFundamentals of Nursing\nBehavioural Sciences\nIntroduction to Data Analytics with Excel\nNursing Skills Laboratory1.1\nHuman Biosciences 1.1 \nEnglish Language Express*\nInnovation Made Possible^\n\n'
      'Level 1.2:\nGerontology & Community Nursing\nIntroduction to Pharmacology\nSNursing Skills Laboratory 1.2\nHuman Biosciences 1.2\nClinical Practice 1.2 \nCommunication Essentials^\nHealth & Wellness\n\n'
      'Level 2.1:\nNursing Skills Laboratory 2.1\nIntegrated Nursing Sciences \nClinicalPractice 2.1 \nIntroduction to Nursing Research\nLaw, Ethics & Health Care\nWorld Issues: A Singapore Perspective\n\n'
      'Level 2.2:\nNursing Skills Laboratory 2.2\nIntegrated Nursing Sciences 2.2\n Clinical Practice 2.2\nHealth Nursing & Palliative Care\nWomen & Children Health\n\n'
      'Level 3.1:\nIntegrated Nursing Sciences 3.1\nNursing Skills Laboratory 3.1\nNursing Management & Professional Development\nProject ID: Connecting the Dots^\n\n'
      'Level 3.2:\nClinical Practice 3.2\nClinical Practice (Specialised)\nPre-Registration Consolidation Practice\nHealthcare Career & Professional Preparation (Nursing)\n';

  static final careerNurs =
      'Upon graduation, you can apply for registration with the Singapore Nursing Board to be a registered nurse and practise in both government and private healthcare settings.';
  static final reqNurs =
      'English Language 1-7\nMathematics (Elementary/Additional) 1-6\nAny one of the following subjects 1-6: \n\nBiology\nBiotechnology\nChemistry\nFood & Nutrition / Nutrition & Food Science\nPhysics\nScience (Chemistry, Biology)\nScience (Physics, Biology)\nScience (Physics, Chemistry)\n ';

  static final aboutOPT =
      'Ngee Ann Polytechnic Diploma in Optometry (OPT) is accredited by the Singapore Optometrists & Opticians Board, ensuring top-notch education. This program equips you with sought-after skills to detect, diagnose, and manage eye disorders, making a significant impact on eye care quality. Through a 16- or 25-week internship, you will gain exposure to various optometry practices and specializations. Industry partners, including eye care product manufacturers, deliver classes, providing real-world insights. Graduates are well-positioned for rewarding roles in optometry retail and private practices with attractive salaries. Beyond healthcare, the broad-based curriculum opens doors to diverse career opportunities. Join OPT to make a meaningful contribution to eye care in a society with an aging population and increased myopia prevalence.';
  static final specOPT = 'NIL';
  static final modulesOPT =
      'Level 1.1:\nGeneral Anatomy & Physiology\nGeometrical & Physical Optics\nIntroduction to Data Analytics with Excel\nOcular Anatomy & Physiology\nEnglish Language Express\nInnovation Made Possible\n\n'
      'Level 1.2:\nGeneral Pathology & Diseases\nOcular Health Assessment & Disease Management 1\nRefraction\nOphthalmic Optics & Dispensing\nHealth & Wellness\nCommunication Essentials\n\n'
      'Level 2.1:\nOcular Health Assessment & Disease Management 2\nContact Lens & Fitting 1\nOphthalmic Dispensing & Prescribing\nVisual Perception & Instrumentation\nWorld Issues: A Singapore Perspective\n\n'
      'Level 2.2:\nContact Lens & Fitting 2\nBiostatistics & Research Methods\nIntroduction to Optometric Practice\nBinocular & Paediatric Vision\nCommunication in Optometric Practice\n'
      'Level 3.1:\nOPT Specialised Internship Programme (New)\nOR\n4-month Internship\n\n'
      'Level 3.2:\nAdvanced Optometric Practice\nAdvanced Contact Lens Practice\nOptometricPractice Management & Ethics\nHealthcare Career & Professional Preparation (Optometry)\nOphthalmic Pharmacology\nProject ID: Connecting the Dots\n\n';

  static final careerOPT =
      'As an Optometry graduate, you can land rewarding roles in optometry retail and private practices which draw attractive salaries. Alternatively, you could also work at ophthalmology clinics, eye care product companies, research centres and hospitals.';
  static final reqOPT =
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
          title: const Text('School of Health Sciences(S10223503)'),
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
                'images/hs.jpg',
                // height: 300,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Why HS',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Joining Health Sciences at Ngee Ann Polytechnic (NP) is a transformative decision offering a holistic education in the medical field. With programs accredited to the highest standards, you will receive quality education and hands-on training in real healthcare settings from the outset. The dynamic curriculum, led by experienced faculty, stays current with healthcare advancements. NP is strong industry ties provide opportunities for internships and exposure to cutting-edge technologies. Choose from diverse specializations, tailor your education to your interests, and graduate well-prepared for a impactful career in healthcare. It is not just an education; it is a pathway to making a meaningful contribution to the well-being of individuals and communities.',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCard('Nursing (NSG)', 'images/nsg.png', controller,
                  aboutNurs, specNurs, modulesNurs, careerNurs, reqNurs),
              buildCard('Optometry(OPT)', 'images/opt.jpg', controller1,
                  aboutOPT, specOPT, modulesOPT, careerOPT, reqOPT),
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
