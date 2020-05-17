import 'package:flutter/material.dart';
import 'constans.dart';

class Results extends StatelessWidget {

  Results({@required this.bmiResult, @required this.resultinterpret, @required this.height, @required this.weight, @required this.age,@required this.color, @required this.icontag, @required this.iconMainTag});

  final String bmiResult;
  final String resultinterpret;
  final String height;
  final String weight;
  final String age;
  final IconData icontag;
  final IconData iconMainTag;
  final Color color;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        textTheme: TextTheme(
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: inactiveCardColor,
                borderRadius: BorderRadius.circular(25.0)
              ),
              height: 600.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Your BMI Results!!!',
                      style: resultTextHead,
                    ),
                  ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Expanded(
                       flex: 1,
                       child: Column(
                         children: <Widget>[
                           Container(
                             margin: EdgeInsets.only(top: 17.50),
                             padding: EdgeInsets.only(bottom: 17.0),
                             child: Text(
                               'Gender',
                               style: resultTextMain,
                             ),
                           ),
                           Container(
                             child: Icon(
                               icontag,
                               size: 60.0,
                               color: Colors.white,
                             ),
                           )
                         ],
                       ),
                     ),
                     Expanded(
                       flex: 1,
                       child: Column(
                         textBaseline: TextBaseline.alphabetic,
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.all(16.0),
                             child: Text(
                               'Age',
                               softWrap: true,
                               style: resultTextMain,
                             ),
                           ),
                           Container(
                             padding: EdgeInsets.all(16.0),
                             child: Text(
                               age,
                               style: resultTextSub,
                             ),
                           )
                         ],
                       ),
                     ),
                     Expanded(
                       flex: 1,
                       child: Column(
                         textBaseline: TextBaseline.alphabetic,
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.all(16.0),
                             child: Text(
                               'Height',
                               style: resultTextMain,
                             ),
                           ),
                           Container(
                             padding: EdgeInsets.all(16.0),
                             child: Text(
                               height,
                               style: resultTextSub,
                             ),
                           )
                         ],
                       ),
                     ),
                     Expanded(
                       flex: 1,
                       child: Column(
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.all(16.0),
                             child: Text(
                               'Weight',
                               style: resultTextMain,
                             ),
                           ),
                           Container(
                             padding: EdgeInsets.all(16.0),
                             child: Text(
                               weight,
                               style: resultTextSub,
                             ),
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 25,
                 ),
                 Icon(
                   iconMainTag,
                   size: 150.0,
                   color: color,
                 ),
                 SizedBox(
                   height: 25,
                 ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            resultinterpret,
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            bmiResult,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 27.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}