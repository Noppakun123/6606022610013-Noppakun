import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "CW2", home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num = 0;
  String num1 = "";
  String num2 = "";
  String ShowVal = "0";
  String Operator = "";
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculater")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ShowVal, style: TextStyle(fontSize: 40)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "7";
                        ShowVal = num1;
                      } else {
                        num2 += "7";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("7", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "8";
                        ShowVal = num1;
                      } else {
                        num2 += "8";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("8", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "9";
                        ShowVal = num1;
                      } else {
                        num2 += "9";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("9", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    Operator = "+";
                  },
                  child: Text("+", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "4";
                        ShowVal = num1;
                      } else {
                        num2 += "4";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("4", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "5";
                        ShowVal = num1;
                      } else {
                        num2 += "5";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("5", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "6";
                        ShowVal = num1;
                      } else {
                        num2 += "6";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("6", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    Operator = "-";
                  },
                  child: Text("-", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "1";
                        ShowVal = num1;
                      } else {
                        num2 += "1";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("1", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "2";
                        ShowVal = num1;
                      } else {
                        num2 += "2";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("2", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "3";
                        ShowVal = num1;
                      } else {
                        num2 += "3";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("3", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    Operator = "*";
                  },
                  child: Text("*", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "0";
                        ShowVal = num1;
                      } else {
                        num2 += "0";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("0", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num1 = "";
                      num2 = "";
                      Operator = "";
                      ShowVal = "0";
                    });
                  },
                  child: Text("C", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (num1 == "" || num2 == "") return;
                      if (Operator == "+") {
                        result = double.parse(num1) + double.parse(num2);
                      } else if (Operator == "-") {
                        result = double.parse(num1) - double.parse(num2);
                      } else if (Operator == "*") {
                        result = double.parse(num1) * double.parse(num2);
                      } else if (Operator == "/") {
                        result = double.parse(num1) / double.parse(num2);
                      } else if (Operator == "%") {
                        result =
                            (double.parse(num1) / 100) * double.parse(num2);
                      } else if (Operator == "^") {
                        result = pow(
                          double.parse(num1),
                          double.parse(num2),
                        ).toDouble();
                      }
                      ShowVal = result.toString();
                      num1 = result.toString();
                      num2 = "";
                      Operator = "";
                    });
                  },
                  child: Text("=", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    Operator = "/";
                  },
                  child: Text("/", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        if (num1.isNotEmpty) {
                          num1 = num1.substring(0, num1.length - 1);
                          ShowVal = num1;
                        }
                      } else {
                        if (num2.isNotEmpty) {
                          num2 = num2.substring(0, num2.length - 1);
                          ShowVal = num2;
                        }
                      }
                    });
                  },
                  child: Text("DEL", style: TextStyle(fontSize: 25)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Operator = "%";
                    });
                  },
                  child: Text("%", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Operator = "^";
                    });
                  },
                  child: Text("^", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),

                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty && num1.isNotEmpty) {
                        result = sqrt(double.parse(num1));
                        ShowVal = result.toString();
                      }
                    });
                  },
                  child: Text("√", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
