import 'package:flutter/material.dart';

 class CustomApp extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomApp({ super.key, required this.title, });
  

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
       backgroundColor: Colors.transparent,
      title: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.titleLarge,),
        centerTitle: true,
        );
      
  }
  
}