import 'package:portfolify/models/app_model.dart';
import 'package:portfolify/models/color_model.dart';
import 'package:portfolify/models/device_model.dart';
import 'package:portfolify/screen/miniProjects/education/education.dart';
import 'package:portfolify/screen/miniProjects/experience/experience.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/experience_model.dart';
import '../models/skill_model.dart';
import '../screen/miniProjects/about/about.dart';
import '../screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.samsungGalaxyNote20Ultra,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPadAir4,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
      title: "About",
      color: Colors.white,
      icon: Icons.person,
      screen: const AboutMe()),

  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
  AppModel(
      title: "Skills",
      color: Colors.white,
      icon: Icons.ac_unit_rounded,
      screen: const Skills()),
  AppModel(
      title: "Experience",
      color: Colors.white,
      icon: FontAwesomeIcons.idBadge,
      screen: const Experience()),
  AppModel(
    title: "Resume",
    assetPath: "assets/icons/resume.svg",
    color: Colors.white,
    link: resumeLink,
  ),
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.svg",
    color: Colors.white,
    link: linkedIn,
  ),

  AppModel(
    title: "Github",
    assetPath: "assets/icons/github.svg",
    color: Colors.white,
    link: github,
  ),
  AppModel(
    title: "Email",
    assetPath: "assets/icons/email.svg",
    color: Colors.white,
    link: email,
  ),
  AppModel(
    title: "𝕏",
    assetPath: "assets/icons/twitter.svg",
    color: Colors.white,
    link: twitter,
  ),
  AppModel(
    title: "Youtube",
    assetPath: "assets/icons/youtube.svg",
    color: Colors.white,
    link: youtubeChannel,
  ),

  // AppModel(
  //   title: "Linktree",
  //   assetPath: "assets/icons/linktree.png",
  //   color: Colors.white,
  //   link: linktree,
  // ),
  // AppModel(
  //   title: "Play Store",
  //   assetPath: "assets/icons/playstore.svg",
  //   color: Colors.white,
  //   link: playApps,
  // ),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Lainchhaur, Nepal",
    title: 'Bsc. CSIT',
    company: 'Amrit Science Campus',
    startDate: 'April 2022',
    endDate: 'Present',
    bulletPoints: [
      "Currently in the Second year of my college!",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Lalitpur, Nepal",
    title: '+2 Science',
    company: 'Prasadi Academy',
    startDate: 'July 2019',
    endDate: 'August 2021',
    bulletPoints: [
      'Some of the best years of +2 life',
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Lalitpur, Nepal",
    title: 'Full Stack Flutter Developer',
    company: 'Remote',
    startDate: 'Feb 2023',
    endDate: 'Present',
    bulletPoints: [
      "Actively develop and manage push notifications to engage users effectively.",
      "Successfully set up in-app purchase functionality for both iOS and Android platforms.",
      "Utilize the Provider package for streamlined state management and implement real-time data streams.",
      "Employ Amplitude and Firebase Analytics to track and analyze user behavior, informing data-driven decisions.",
    ],
  ),
  // Add more job experiences here...
];

const String youtubeChannel = "https://www.youtube.com/@aayyyyyush";
const String linkedIn = "https://www.linkedin.com/in/aayyyyyush/";
const String github = "https://github.com/aayyyyyush";
const String twitter = "https://twitter.com/aayyyyyush";
const String resumeLink =
    "https://drive.google.com/file/d/1toeCP4SpFqfRfVBy-3VXiiVORtura_Ic/view";
const String email = "dc.aayush.dangi@gmail.com";
const String linktree = "https://linktr.ee/aayyyyyush";
String introduction =
    "Welcome to my portfolio website, this website is highly inspired(almost copied) from Pawan Kumar.\n\nI am a Flutter Developer with 1 years of experience in flutter. I've Worked in many projects most recently worked with Shoppoholic: a Shopping app where you buy things from the stores present.\n\nWhen I am not developing apps I mainly watch some movies or series or Skits on Netflix/YouTube or Play Clash Of Clans";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "node.js",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "MongoDB",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Express",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Riverpod",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Bloc",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Nepali", colorS: Colors.orange),
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
];
