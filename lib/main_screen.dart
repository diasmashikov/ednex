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

  void handleDropdownProgrammingChange(String value) {
    setState(() {
      programmingLanguage = value;
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
                options: ['Java', 'Python', 'JavaScript', 'C#'],
                onChanged: handleDropdownProgrammingChange),
          ],
        ),
      ),
    );
  }
}
