
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';

class ResultPage extends StatelessWidget {

  ResultPage({
    required this.bmiResult,
    required this.result,
    required this.review,
  });

  final String bmiResult;
  final String result;
  final String review;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: const Text(
                  'Your Results',
                  style: kTitleTextStyle,

                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                onPress: () {},
                colour: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        result.toString(),
                        style:  TextStyle(
                          color: result == 'OverWeight' 
                            ? const Color(0xFFCC0000) 
                            : result == 'Normal' 
                              ? const Color(0xFF00CC41) 
                              : const Color(0xFFCCBB00),
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
               
                        
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      review,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                )
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: kBottomContainerHeight,
            margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kBottomContainerColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(

                child: Text('RE-Calculate',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 35),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}