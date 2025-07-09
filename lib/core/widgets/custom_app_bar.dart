import 'package:flutter/material.dart';
import 'package:medical_app/core/theming/styles.dart';

class CustomDefaultAppBar extends StatelessWidget {
  final String title;
  const CustomDefaultAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title:  Text( title , style: TextStyles.font18DarkBlueBold,),
      centerTitle: true,
    );
  }
}
