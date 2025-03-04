import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(children: [Icon(Icons.arrow_back_ios_new_sharp)]),
                    Column(children: [Text("Previous")]),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Column(
                        children: [
                          Text(
                            "7/10",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 40),
                                Container(
                                  height: 200,
                                  width: 260,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    210,
                                    210,
                                  ),
                                ),
                              ],
                            ),

                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(
                                  "30",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 86,
                                  width: 86,
                                  child: CircularProgressIndicator(
                                    color: Colors.amber,

                                    backgroundColor: Colors.black,
                                    value: 0.5,
                                    strokeWidth: 8,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
