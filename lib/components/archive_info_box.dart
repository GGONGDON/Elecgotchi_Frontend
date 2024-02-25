import 'package:flutter/material.dart';

class TextBox_2 extends StatefulWidget {
  final String instruct_up;
  final String instruct_dis;

  const TextBox_2({Key? key, required this.instruct_up, required this.instruct_dis}) : super(key: key);

  @override
  _TextBox_2State createState() => _TextBox_2State();
}

class _TextBox_2State extends State<TextBox_2> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: screenWidth * 0.8,
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Disposal Guidance',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              SizedBox(height: 10),

              // radio button(Upcycling & Disposal)
              Row(
                children: [
                  Radio<String>(
                    value: 'up',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                  const Text('Upcycling',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'dis',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                  const Text('Disposal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _selectedOption == 'up' ? widget.instruct_up : (_selectedOption == 'dis' ? widget.instruct_dis : 'Select an Option!'),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
