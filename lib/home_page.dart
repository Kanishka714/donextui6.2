import 'package:donextui6_2/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'my_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I would like to be known as ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.black)
                              ),
                              TextSpan(
                                  text: '(Optional)',
                                  style: TextStyle(color: Colors.grey)
                              ),
                            ]
                        )),
                      ),
                      CustomTextField(hintText: 'Please provide your pronoun / gender', showCheckBox: false),
                    ],
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I would like to be called by ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.black)
                              ),
                            ]
                        )),
                      ),
                      CustomTextField(hintText: 'Please enter your profile name',showCheckBox: false),
                    ],
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I\'m studying / Would like to study ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.black)
                              ),
                            ]
                        )),
                      ),
                      CustomTextField(hintText: 'Art',showCheckBox: true),
                      CustomTextField(hintText: 'Technology',showCheckBox: true),
                      CustomTextField(hintText: 'Economics',showCheckBox: true),
                      CustomTextField(hintText: 'Science',showCheckBox: true),
                      CustomTextField(hintText: 'Psychology',showCheckBox: true),
                      CustomTextField(hintText: 'Marketing',showCheckBox: true),
                      CustomTextField(hintText: 'Design',showCheckBox: true),

                      SizedBox(height: 20.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(color: Colors.white, buttonText: "Cancle"),
                          SizedBox(width: 20.0),
                          MyButton(color: Colors.teal, buttonText: "Save",),
                        ],
                      ),

                      SizedBox(height: 50.0),
                    ],
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
