import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
    final Widget page;
    final String pageName;
  
  const CommonButton({
    super.key,
    required this.page,
    required this.pageName,

  });

  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page )); }, 
          
          child:  Text(pageName),
          );

    
  }
}
