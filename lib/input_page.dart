import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'iconpage.dart';
import 'reusablecard.dart';
import 'constans.dart';
import 'bottombutton.dart';
import 'calculatorbrain.dart';
import 'bmicalculatorpage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  Color maleCardColor = inactiveCardColor;
  Color maleIconColor = textCardColor;
  Color femaleCardColor = inactiveCardColor;
  Color femaleIconColor = textCardColor;
  Color weightTextColor = textCardColor;
  Color ageTextColor = textCardColor;
  Color sliderThumbColor = textCardColor;
  Color sliderTextColor = textCardColor;
  int genderKey = -1;
  int height = 170;
  int weight = 50;
  int age = 20;
  void ageChanger(int key){
    if(key == 0)
      if(age<110)
        setState(() {
          age++;
          ageTextColor = texthighlightcolor;
        });
    if(key == 1)
      if(age>0)
        setState(() {
          age--;
          ageTextColor = texthighlightcolor;

        });
  }
  void weightChanger(int key){
    if(key == 0)
      if(weight<150)
        setState(() {
          weight++;
          weightTextColor = texthighlightcolor;
        });
    if(key == 1)
      if(weight>0)
        setState(() {
          weight--;
          weightTextColor = texthighlightcolor;

        });
  }
  void updateBoxColor(int key){
    if(key == 0)
    { 
      setState(() {
        genderKey = 0;
        maleIconColor = texthighlightcolor;
        maleCardColor = colorCode;
        femaleIconColor = textCardColor;
        femaleCardColor = primaryColor;
      });
    }
    if(key == 1)
    {
        setState(() {
          genderKey = 1;
          femaleIconColor = texthighlightcolor;
          femaleCardColor = colorCode;
          maleIconColor = textCardColor;
          maleCardColor = primaryColor;
        });
    }
  }

  void updateSliderColor(){
    setState(() {
      sliderTextColor = Colors.white;
      sliderThumbColor = bottomColorCode;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onTap: (){
                        setState(() {
                          updateBoxColor(0);
                        });
                      },
                      color: maleCardColor,
                      cardChild: Center(
                        child: IconCard(
                          colorKey: maleIconColor,
                          textKey: 'MALE',
                          iconkey: LineIcons.mars,
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onTap: (){
                        setState(() {
                          updateBoxColor(1);
                        });
                      },
                      color: femaleCardColor,
                      cardChild: Center(
                        child: IconCard(
                          colorKey: femaleIconColor,
                          textKey: 'FEMALE',
                          iconkey: LineIcons.venus,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      color: colorCode,
                      cardChild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                            fontSize: fontSize,
                            color: sliderTextColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: sliderTextColor,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: sliderTextColor,
                                ),
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15.0,
                                disabledThumbRadius: 15.0,
                              ),
                              overlayShape: RoundSliderOverlayShape(
                                overlayRadius: 30.0,
                              ),
                              thumbColor: sliderThumbColor,
                              overlayColor: Color(0x29D14D3D),
                              activeTrackColor: sliderTextColor,
                              inactiveTrackColor: textCardColor,

                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 163.0,
                              max: 220.0,
                              onChanged: (double newvalue){
                                setState((){
                                  updateSliderColor();
                                  height = newvalue.toInt();
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      color: colorCode,
                      cardChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: fontSize,
                                color: weightTextColor,
                              ),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                color: weightTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color: weightTextColor,
                                      ),
                                    onPressed: (){
                                      setState(() {
                                        weightChanger(1);
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: weightTextColor,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        weightChanger(0);
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ), 
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      color: colorCode,
                      cardChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: fontSize,
                                color: ageTextColor,
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                color: ageTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color: ageTextColor,
                                      ),
                                    onPressed: (){
                                      setState(() {
                                        ageChanger(1);
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: ageTextColor,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        ageChanger(0);
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ),
                      ),
                  )
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'BMI CALCULATOR',
              onTap: (){
                Brain calc = Brain(height: this.height, weight: this.weight, gender: genderKey, age: this.age);
                setState(() {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results(
                      icontag: calc.fGender(),
                      age: calc.fAge(),
                      weight: calc.fWeight(),
                      bmiResult: calc.calculatorBMI(),
                      resultinterpret: calc.getResult(),
                      height: calc.fHeight(),
                      iconMainTag: calc.iconChanger(),
                      color: calc.colorChanger(),
                    ),
                  ),
                );
              });
              },
            )
          ],
        ),
      )
    ); 
  }
}


