import 'package:bmi_app/screen/function.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  _BmiAppState createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  int weight = 20;
  int height = 50;
  int age = 10;
  bool male = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff2A2A2C),
        title: Text(
          "Bmi Calculator",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff424242),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    male = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: male
                                        ? Color(0xff9575CD)
                                        : Color(0xff2A2A2C),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.male,
                                        size: 50,
                                        color: Colors.white70,
                                      ),
                                      Text(
                                        "Male",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    male = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: male
                                        ? Color(0xff2A2A2C)
                                        : Color(0xff9575CD),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.female,
                                        size: 50,
                                        color: Colors.white70,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      flex: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff2A2A2C),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Height",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "$height",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 50,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    "cm",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTickMarkColor: Colors.red,
                                  activeTrackColor: Colors.purple.shade300,
                                  overlayColor: Colors.deepPurple.shade300,
                                  inactiveTrackColor: Colors.grey,
                                  thumbColor: Colors.deepPurple.shade600,
                                ),
                                child: Slider(
                                    value: height.toDouble(),
                                    min: 50,
                                    max: 200,
                                    onChanged: (value) {
                                      setState(() {
                                        height = value.toInt();
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff2A2A2C),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Weight",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "$weight",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                weight++;
                                              });
                                            },
                                            child: Icon(Icons.add),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff616161),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(15),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                weight--;
                                              });
                                            },
                                            child: Icon(Icons.remove),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff616161),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(15),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff2A2A2C),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Age",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "$age",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                age++;
                                              });
                                            },
                                            child: Icon(Icons.add),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff616161),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(15),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                age--;
                                              });
                                            },
                                            child: Icon(Icons.remove),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff616161),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(15),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      flex: 10,
                    ),
                  ],
                ),
                flex: 15,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.purple,
                  child: InkWell(
                    onTap: () {
                      Calculation calculation = Calculation(
                          res_age: age, res_height: height, res_weight: weight);
                      var bmi = calculation.calculateBmi();
                      var result = calculation.result();
                      var advice = calculation.info();
                      //print("Your BMI is $bmi So $result Now $advice");
                      Dialog(bmi, result, advice);
                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Dialog(String bmi, String result, String advice) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Your BMI is $bmi"),
            content: Column(
              children: [
                Text("So $result"),
                Text("Moreover $advice"),
              ],
            ),
          );
        });
  }
}
