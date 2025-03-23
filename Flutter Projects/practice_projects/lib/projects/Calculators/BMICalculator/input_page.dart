import 'package:flutter/material.dart';

import 'constants.dart';
import 'result_page.dart';
import  'calculator.dart';
import 'reuseable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{male, female}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender activeGender = Gender.male;
  int height = 120;
  int weight = 45;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
        appBar: AppBar(
          title: Text("BMI Calculator"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeGender == Gender.male? kMaleActiveCardColor:kMaleInActiveCardColor,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(FontAwesomeIcons.mars,size: 80,),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text('MALE', style: kGenderTextStyle,)
                          ]
                      ),
                      onPress: (){
                        setState(() {
                          activeGender = Gender.male;
                        });
                      },

                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeGender == Gender.female? kFemaleActiveCardColor:kFemaleInActiveCardColor,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(FontAwesomeIcons.venus,size: 80,),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text('FEMALE', style: kGenderTextStyle,)
                          ]
                      ),
                      onPress: (){
                        setState(() {
                          activeGender = Gender.female;
                        });

                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text('cm', style: kLabelTextStyle,),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: kBottomContainerColor,
                        activeTrackColor: Colors.white,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        trackHeight: 1,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 220,
                        onChanged: (double value){
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    ),
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                onPress: (){},
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',
                            style: kLabelTextStyle,),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                                RoundIconButton(
                                  icon: const Icon(FontAwesomeIcons.minus, color: Colors.white,),
                                  onTap: (){
                                    setState(() {
                                      weight--;
                                    });
                                  }
                              ),
                              SizedBox(
                                width: 20,
                              ),

                              RoundIconButton(
                                  icon: Icon(FontAwesomeIcons.plus, color: Colors.white,),
                                  onTap: (){
                                    setState(() {
                                      weight++;
                                    });
                                  }
                              ),

                            ],
                          )
                        ],
                      ),
                      onPress: (){},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: kLabelTextStyle,),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                                RoundIconButton(
                                  icon: const Icon(FontAwesomeIcons.minus, color: Colors.white,),
                                  onTap: (){
                                    setState(() {
                                      weight--;
                                    });
                                  }
                              ),
                              SizedBox(
                                width: 20,
                              ),

                              RoundIconButton(
                                  icon: Icon(FontAwesomeIcons.plus, color: Colors.white,),
                                  onTap: (){
                                    setState(() {
                                      age++;
                                    });
                                  }
                              ),

                            ],
                          )
                        ],
                      ),
                      onPress: (){},
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: ()
              {
                Calculate bmiCalculate = new Calculate(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            bmiResult: bmiCalculate.calculateBMI(),
                            result: bmiCalculate.getResults(),
                            review: bmiCalculate.getReview())
                    )
                );
              },
              child: Container(
                width: double.infinity,
                height: kBottomContainerHeight,
               margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kBottomContainerColor,
                  borderRadius: BorderRadius.circular(10)),
                child: Center(

                  child: Text('Calculate',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 35),),
                ),
              ),
            )
          ],
        )
    );
  }
}



class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.icon, required this.onTap});

  final Icon icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon,
      shape: CircleBorder(),
      fillColor: kButtonColor,
      onPressed: ()
      {
        onTap();
      },
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 7,
    );
  }
}