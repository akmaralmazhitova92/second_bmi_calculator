
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/custom_app.dart';
import 'package:bmi_calculator/widgets/custom_icon_button.dart';
import 'package:bmi_calculator/widgets/weight_age.dart';
import 'package:flutter/material.dart';

  enum Gender {male,female,nonChoosen}

class HomeScreen extends StatefulWidget {
  const HomeScreen({ super.key });
  

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Gender selectedGender = Gender.nonChoosen;
  int height = 130;
  int weight = 50;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomApp(title: 'bmi calculator'),

      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
             CustomIconButton(
              icon: Icons.male, 
              text: 'male',
              bgColor: selectedGender==Gender.male
              ? AppColors.greyBlueDarker 
              :AppColors.greyBlueDark,
              onTap: (){
                setState(() {
                  selectedGender = Gender.male;
                });
              },),
              const SizedBox(width: 16,),
              CustomIconButton(
                icon: Icons.female, 
                text: 'female',
                bgColor: selectedGender==Gender.female
                ? AppColors.greyBlueDarker
                : AppColors.greyBlueDark,
                onTap: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                }, ),
              ],
            ),
            const SizedBox(height: 16,),
            Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.greyBlueDarker,),
              child: Column(
                children: [
                  const SizedBox(height: 16,),
                  Text('HEIGHT',
                  style: Theme.of(context).textTheme.titleLarge,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                      style: Theme.of(context).textTheme.headlineLarge,),
                      Text('cm',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.end,)
                    ],
                  ),
                  Slider(
                    value: height.toDouble(), 
                    min: 50,
                    max: 200,
                    thumbColor: AppColors.pinkDark,
                    activeColor: AppColors.pinkDark,
                    onChanged: (double newBoy){
                      height = newBoy.round();
                      setState(() {
                        
                      });
                    }),
                ],
              ),

            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                WeightAge(
                  number: weight.toString(), 
                  text: 'weight', 
                  plus: (){
                    setState(() {
                      weight++;
                    });
                  }, 
                  minus: (){
                    setState(() {
                      weight--;
                    });
                  }),
             
            const SizedBox(width: 14,),
            WeightAge(
              number: age.toString(), 
              text: 'age', 
              plus: (){
                setState(() {
                  age++;
                });
              }, 
              minus: (){
                setState(() {
                  age--;
                });
              }) ],
            ),
            
          ],
        ),
      ),
      
      bottomNavigationBar: CalculateButton(
        text: 'calculate', 
        buttonTextStyle: const TextStyle(
          color: AppColors.black,
          fontSize: 32,
        ),
        onTap: (){
        
          CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
          final bmi = calc.calculateBMI();
       
       
        Navigator.push(context, MaterialPageRoute(builder: (context){
              return ResultScreen(
                bmiText: calc.getResult(), bmiAdvise: calc.getAdvise(), bmi: bmi);

            },));

      })
      );
  
  }
}



