import 'package:flutter/material.dart';

import '../../../../../core/app_text_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.icon, required this.title,this.onTap});

  final ImageIcon icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.blue[200],
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                title,
                style: AppTextStyle.text18W500White(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
