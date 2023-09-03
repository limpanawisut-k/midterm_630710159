import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class option_question extends StatelessWidget {
  String option;
  String ans;
  bool trueans;
  option_question({
    super.key,
    required this.option,
    required this.trueans,
    required this.ans,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: trueans ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.black38, width: 2)),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: trueans ? Colors.red : Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                    color: trueans ? Colors.black : Colors.black38, width: 2),
              ),
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                option,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
          Text(
            ans,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: trueans ? Colors.teal : Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 2, color: trueans ? Colors.black : Colors.white),
                  ),
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.check,
                    color: trueans ? Colors.black : Colors.white,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}