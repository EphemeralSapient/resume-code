import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:styled_text/styled_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.grey[200],
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('asset/image.png'),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Ilavarasan S',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'Student',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ContactInfo(
                      icon: Icons.phone,
                      text: '+91 9080494637',
                    ),
                    ContactInfo(
                      icon: Icons.mail,
                      text: 'sempiternal.eph@gmail.com',
                    ),
                    ContactInfo(
                      icon: FontAwesome.github,
                      text: "Ephemeral-Sapient",
                    ),
                    ContactInfo(
                      icon: FontAwesome.linkedin,
                      text: "Ilavarasan Sampath",
                    ),
                    const SizedBox(height: 20.0),
                    PersonalDetailsCard(
                      title: 'Nationality',
                      value: 'Indian',
                    ),
                    PersonalDetailsCard(
                      title: 'Date of Birth',
                      value: '13/10/2003',
                    ),
                    PersonalDetailsCardAddr(
                      value:
                          '8/2-D Nagammal Nagar,\n Sulur, Coimbatore - 641402',
                    ),
                    const SizedBox(height: 20.0),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: [
                        LangChip(label: "Tamil"),
                        LangChip(label: "English"),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        StyledText(
                          text: '<h1>About Me</h1>',
                          tags: {
                            'h1': StyledTextTag(
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          },
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'Highly motivated and detail-oriented software developer with a strong foundation in Flutter, React, Linux, Mongodb, and Python/C++. Currently pursuing B.E. in Computer Science Engineering at Dr. N.G.P. Institute of Technology. Passionate about building innovative mobile applications and exploring emerging technologies to create meaningful user experiences.',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        StyledText(
                          text: '<h1>Education</h1>',
                          tags: {
                            'h1': StyledTextTag(
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          },
                        ),
                        const SizedBox(height: 10.0),
                        TimelineTile(
                          alignment: TimelineAlign.start,
                          indicatorStyle: IndicatorStyle(
                            width: 40.0,
                            color: Colors.blue,
                            padding: const EdgeInsets.all(8.0),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: Icons.class_,
                            ),
                          ),
                          beforeLineStyle: const LineStyle(color: Colors.blue),
                          endChild: Container(
                            padding: const EdgeInsets.only(left: 16.0),
                            constraints: const BoxConstraints(minHeight: 100.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Higher Secondary School',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Perks Matriculation Higher Secondary School',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  '2020 - 2021',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Secured 78% score',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.start,
                          indicatorStyle: IndicatorStyle(
                            width: 40.0,
                            color: Colors.blue,
                            padding: const EdgeInsets.all(8.0),
                            iconStyle: IconStyle(
                              color: Colors.white,
                              iconData: Icons.school,
                            ),
                          ),
                          beforeLineStyle: const LineStyle(color: Colors.blue),
                          endChild: Container(
                            padding: const EdgeInsets.only(left: 16.0),
                            constraints: const BoxConstraints(minHeight: 100.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bachelor of Engineering in Computer Science (Expected Graduation: 2025)',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Dr. N.G.P. Institute of Technology',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  '2021 - Present',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                const Text(
                                  'Relevant coursework: Data Structures, Algorithms, '
                                  'Object-Oriented Programming, Database Management Systems, etc.',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        StyledText(
                          text: '<h1>Technical Skills</h1>',
                          tags: {
                            'h1': StyledTextTag(
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          },
                        ),
                        const SizedBox(height: 10.0),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: [
                            SkillChip(label: 'Flutter'),
                            SkillChip(label: 'Redis'),
                            SkillChip(label: 'Linux'),
                            SkillChip(label: 'MongoDB'),
                            SkillChip(label: 'Firebase'),
                            SkillChip(label: 'React'),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        StyledText(
                          text: '<h1>Projects</h1>',
                          tags: {
                            'h1': StyledTextTag(
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          },
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          '1. Project Prism - A project made in Flutter and React.js for '
                          'college usage, providing convenient feature and information within your hands anywhere anytime',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const Text(
                          '2. UART Scoreboard Control App - developed using Flutter to facilitate real-time '
                          'scoreboard management and control during sports events.',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        StyledText(
                          text: '<h1>Certification</h1>',
                          tags: {
                            'h1': StyledTextTag(
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          },
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          '1. Infosys Springboard - Data structure and database management using Java & MySQL',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const Text(
                          '2. Yardstick - Advanced react.js course',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ... (previous imports remain the same)

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue[800],
            size: 20.0,
          ),
          const SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2.0,
            spreadRadius: 1.0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class LangChip extends StatelessWidget {
  final String label;

  LangChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2.0,
            spreadRadius: 1.0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.blue[800],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class PersonalDetailsCard extends StatelessWidget {
  final String title;
  final String value;

  PersonalDetailsCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalDetailsCardAddr extends StatelessWidget {
  final String value;

  PersonalDetailsCardAddr({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
