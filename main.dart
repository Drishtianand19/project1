//import 'dart:html';
//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _ButtonIsPressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rs .79  ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 1.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: const [
                          Text(
                            'Delivery:  ',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '2.5 Hrs ',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Row(
                        children: const [
                          Text(
                            'Revisions:  ',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '4 ',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   height: 1.0,
                    // ),
                    const Text(
                      'Deliverables:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const SizedBox(
                    //   height: 1.0,
                    // ),
                    const Text(
                      'Poster .png, .psd, .ai files',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),

                    ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(
                        height: 40.0,
                        width: 250.0,
                      ),
                      child: ElevatedButton.icon(
                        icon: Icon(
                          _ButtonIsPressed ? null : Icons.lock,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary:
                                _ButtonIsPressed ? Colors.green : Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              //side: const BorderSide(color: Colors.red)
                            )),
                        label: _ButtonIsPressed
                            ? const Text("Payment Successful")
                            : const Text("Place order"),

                        //    style: TextStyle(fontSize: 14)
                        onPressed: () {
                          setState(() {
                            _ButtonIsPressed = !_ButtonIsPressed;
                          });
                        },
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
