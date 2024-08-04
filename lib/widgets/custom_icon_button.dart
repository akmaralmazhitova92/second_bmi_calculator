import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
const CustomIconButton({ super.key, required this.onTap, required this.icon, required this.text, required this.bgColor });

final Function()? onTap;
final IconData icon;
final String text;
final Color bgColor;


  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
                    splashColor: AppColors.black,
                     borderRadius: BorderRadius.circular(25.0),
                    onTap: onTap,
                    child: Ink(
                      padding: const EdgeInsets.all(18.0),
                      decoration:  BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(25.0)
                      ),
                      child: Column(
                        children: [
                          Icon(icon, size: 80,
                          color: AppColors.white,),
                          
                          Text(text.toUpperCase(),
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}