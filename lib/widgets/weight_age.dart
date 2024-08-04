import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
const WeightAge({ super.key, required this.number, required this.text, required this.plus, required this.minus });
final String number;
final String text;
final Function() plus;
final Function() minus;



  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.greyBlueDarker,),
        child: Column(
          children: [
            Text(text,
              style: Theme.of(context).textTheme.titleLarge,),
            Text(number.toString(),
              style: Theme.of(context).textTheme.headlineLarge,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: AppColors.greyBlueLight,
                  shape: const CircleBorder(),
                  onPressed: plus,
                  child: const Icon(Icons.add,
                  color: AppColors.white,)),
                  const SizedBox(width: 8,),
                  FloatingActionButton(
                  backgroundColor: AppColors.greyBlueLight,
                  shape: const CircleBorder(),
                  onPressed: minus,
                  child: const Icon(Icons.remove,
                  color: AppColors.white,))
              ],
            )
          ],
        ),
      ),
    );
  }
}

