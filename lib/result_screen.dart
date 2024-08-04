import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/custom_app.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
const ResultScreen({ super.key, required this.bmiText,required this.bmiAdvise, required this.bmi });
final String bmiText;
final String bmi;
final String bmiAdvise;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const CustomApp(title: 'Bmi Calculator'),
      body: Column(
        children: [
          Text('result page'.toUpperCase(),
          style: Theme.of(context).textTheme.headlineLarge,),
          Expanded(
            child: Container(
               height: MediaQuery.of(context).size.height * 0.6,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.greyBlueDarker,
                ),
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Text(bmiText,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: AppColors.green,)),
                  const SizedBox(height: 80,),
                  Text(bmi,
                  style: Theme.of(context).textTheme.headlineLarge,),
                  const SizedBox(height: 100,),
                  Text(bmiAdvise,
                   style:  Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,),
            
            
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CalculateButton(
        text: 're-calculate', 
        onTap: (){
          Navigator.pop(context);
        }));

   
  }
}