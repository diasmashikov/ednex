import 'package:ednex/data/Language.dart';
import 'package:ednex/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String programmingLanguage = 'Select a programming language';
  String application = 'Select application';
  String backendLibrary = 'Select backend library';
  String backendLibraryTopic = 'Select topic';
  String helpfulLink = "";


  void handleDropdownProgrammingChange(String value) {
    setState(() {
      programmingLanguage = value;
    });
  }

  void handleDropdownApplicationChange(String value) {
    setState(() {
      application = value;
    });
  }

  void handleDropdownBackendLibraryChange(String value) {
    setState(() {
      backendLibrary = value;
    });
  }

  void handleDropdownBackendLibraryTopicChange(String value) {
    setState(() {
      backendLibraryTopic = value;
      switch(value) {
        case "POST method":
          helpfulLink = "https://www.youtube.com/watch?v=wS9LfFtXdBs";
          break;
        case "GET method":
          helpfulLink = "https://www.youtube.com/watch?v=Vg752wm_EWU";
          break;
        case "TCP Connection":
          helpfulLink = "https://www.youtube.com/watch?v=gV-EpY2TeQ0";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomDropdown(
                initialValue: programmingLanguage,
                options: Repository().languages,
                onChanged: handleDropdownProgrammingChange),
            CustomDropdown(
                initialValue: application,
                options: Repository().pythonApplication,
                onChanged: handleDropdownApplicationChange),
            CustomDropdown(
                initialValue: backendLibrary,
                options: Repository().pythonApplicationBackendLibrary,
                onChanged: handleDropdownBackendLibraryChange),
            CustomDropdown(
                initialValue: backendLibraryTopic,
                options: Repository().pythonApplicationBackendLibraryTopic,
                onChanged: handleDropdownBackendLibraryTopicChange),
            Text(helpfulLink)
          ],
        ),
      ),
    );
  }
}
