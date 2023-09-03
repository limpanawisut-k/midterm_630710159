// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../widgets/bulid_option.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710159';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> question = [
    'Which planet is known as the "Red Planet"?',
    'Which country is known as the "Land of the Rising Sun"?',
    'What is the chemical symbol for gold?',
  ];

  static const List<String> optionques1 = [
    'Earth',
    'Mars',
    'Venus',
    'Jupiter',
  ];

  static const List<String> optionques2 = [
    'China',
    'India',
    'Japan',
    'South Korea',
  ];

  static const List<String> optionques3 = [
    'Au',
    'Ag',
    'Fe',
    'Cu',
  ];
  bool statusA = false;
  bool statusB = true;
  bool statusC = false;
  bool statusD = false;
  var number = 1;
  var numberques = 0;
  var oqA = optionques1[0];
  var oqB = optionques1[1];
  var oqC = optionques1[2];
  var oqD = optionques1[3];
  var ques = 'Which planet is known as the "Red Planet"?';

  void handleClickGo() {
    setState(() {
      if (number == 1) {
        oqA = optionques2[0];
        oqB = optionques2[1];
        oqC = optionques2[2];
        oqD = optionques2[3];
        statusA = false;
        statusB = false;
        statusC = true;
        statusD = false;
      } else {
        oqA = optionques3[0];
        oqB = optionques3[1];
        oqC = optionques3[2];
        oqD = optionques3[3];
        statusA = true;
        statusB = false;
        statusC = false;
        statusD = false;
      }
      number = number + 1;
      ques = question[numberques + 1];
      numberques = numberques + 1;
    });
  }

  void handleClickBack() {
    setState(() {
      number--;
      if (number == 1) {
        oqA = optionques2[0];
        oqB = optionques2[1];
        oqC = optionques2[2];
        oqD = optionques2[3];
        statusA = false;
        statusB = false;
        statusC = true;
        statusD = false;
      } else {
        oqA = optionques3[0];
        oqB = optionques3[1];
        oqC = optionques3[2];
        oqD = optionques3[3];
        statusA = true;
        statusB = false;
        statusC = false;
        statusD = false;
      }
      ques = question[numberques - 1];
      numberques = numberques - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 7,
                        blurRadius: 12,
                        offset: Offset(0, 10), // changes position of shadow
                      ),
                    ]),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Question $number of 3',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 16, 20, 16),
                                child: Center(
                                    child: Text(
                                  ques,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                      child: option_question(option: ' A ' , ans: oqA , trueans: statusA),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                      child: option_question(option: ' B ' , ans: oqB , trueans: statusB),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                      child: option_question(option: ' C ' , ans: oqC , trueans: statusC),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 4, 30, 16),
                      child: option_question(option: ' D ' , ans: oqD , trueans: statusD),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: ElevatedButton(
                            onPressed: handleClickBack,
                            child: Text('ข้อก่อนหน้า')),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: ElevatedButton(
                            onPressed: handleClickGo, child: Text('ข้อต่อไป')),
                      ),
                    ),
                  ],
                ),
              ),
              //_buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }



  _buildQuizView() {
    // TODO: build UI
    return Center(child: Text('TODO: build UI'));
  }

  _buildButtonPanel() {
    // TODO: build UI

    return Center(child: Text('TODO: build UI'));
  }
}


