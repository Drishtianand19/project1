//import 'dart:html';
//import 'dart:html';
import 'dart:ui';



import 'package:flutter/material.dart';
void main() {
   runApp( const MyApp()
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isButtonActive=true;
  bool  _ButtonIsPressed= false;
  bool _TextHasChanged = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Center(
            child: Container(
              //margin: const EdgeInsets.all(10.0),
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

                children: [
                RichText(
                textAlign: TextAlign.left,
                text:  const TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Rs.79\n\n', style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 30.0),
                    ),
                    TextSpan(text: 'Delivery: ', style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 20.0)),

                    TextSpan(text: '2.5 Hrs\n\n ', style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 25.0),),
                    TextSpan(text:'Revisions: ', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20.0)),
                    TextSpan(text: '4\n\n', style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 25.0),),
                    TextSpan(text: 'Deliverables:  \n', style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 17.0),),
                    TextSpan(text: 'Poster .png, .psd, .ai files', style: TextStyle(
                        fontWeight: FontWeight.normal,fontSize: 14.0),),
                  ],
                ),


              ),
                  Expanded(
                    child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonHeight: 60,
                      buttonMinWidth: 600,
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Expanded(
                              flex: 1,child: RaisedButton.icon( icon: const Icon(Icons.lock, color:Colors.white,),
                        shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              //side: const BorderSide(color: Colors.red)
                            ),
                        color: _ButtonIsPressed ? Colors.blue : Colors.green,

                        textColor: Colors.white,
                        label: _TextHasChanged ? const Text("Place Order") : const Text("Payment Successful"),

                        //    style: TextStyle(fontSize: 14)
                        onPressed: _isButtonActive
                            ? () {
                          setState(() {
                            _isButtonActive = false;
                            _ButtonIsPressed = !_ButtonIsPressed;
                            _TextHasChanged = !_TextHasChanged;
                          });
                        }:null,

                    ),
          ),
                          ),
  ],
        ),
      ),
                  ],
              ),
          ),
        ),
      ),
    ),
    );
  }
}

