import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
const CalculateButton({ super.key , 
required this.text, 
required this.onTap, 
this.buttonTextStyle });

final String text;
final Function()? onTap;
final TextStyle? buttonTextStyle;

  @override
  Widget build(BuildContext context){
    return Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: AppColors.primary,
          onTap: onTap,
          child: Ink(
            decoration:  const BoxDecoration(
              color: AppColors.pinkDark,
        
            ),
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(text.toUpperCase(),
            style: buttonTextStyle??Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
            ),
          ),
        ),
      );
  }
}

