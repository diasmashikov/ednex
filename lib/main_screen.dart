import 'package:ednex/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widgets/reusable_form_field.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _textWantToLearn = "";

  String _textAlreadyKnows = "";

  void _handleTextWantToLearnChange(String text) {
    setState(() {
      _textWantToLearn = text;
    });
  }

  void _handleTextAlreadyKnowsChange(String text) {
    setState(() {
      _textAlreadyKnows = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ednex'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ReusableTextFormField(
                labelText: 'Enter what you would like to know',
                onChanged: _handleTextWantToLearnChange,
                backgroundColor: Colors.grey[200]),
            const SizedBox(
              height: 20,
            ),
            ReusableTextFormField(
                labelText: 'Enter what you already know',
                onChanged: _handleTextAlreadyKnowsChange,
                backgroundColor: Colors.grey[200]),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 16), // Button padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Button border radius
                ),
              ),
              child: Text(
                'Aggregate',
                style: TextStyle(
                  fontSize: 18, // Text font size
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
