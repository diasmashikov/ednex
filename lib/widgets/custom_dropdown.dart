import 'package:flutter/material.dart';

typedef void ValueChangedCallback(String selectedValue);

class CustomDropdown extends StatefulWidget {
  final String initialValue;
  final List<String> options;
  final ValueChangedCallback onChanged;

  CustomDropdown(
      {required this.initialValue,
      required this.options,
      required this.onChanged});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedOption = 'Select an option';
  bool isDropdownOpen = false;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.initialValue;
  }

  void _handleOptionSelected(String option) {
    setState(() {
      selectedOption = option;
      isDropdownOpen = false;
    });

    // Call the callback function to pass the selected value to the parent widget.
    widget.onChanged(selectedOption);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: Container(
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(selectedOption),
          ),
        ),
        if (isDropdownOpen)
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              children: widget.options
                  .map((option) => GestureDetector(
                        onTap: () {
                          _handleOptionSelected(option);
                        },
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.all(10),
                          child: Text(option),
                        ),
                      ))
                  .toList(),
            ),
          ),
      ],
    );
  }
}
