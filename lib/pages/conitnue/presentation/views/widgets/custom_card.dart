import 'package:flutter/material.dart';

import '../../../../../core/app_text_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.iconButton, required this.title});

  final IconButton iconButton;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      color: Colors.blue[200],
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconButton,
            Text(
              title,
              style: AppTextStyle.text18W500White(context),
            )
          ],
        ),
      ),
    );
  }
}
