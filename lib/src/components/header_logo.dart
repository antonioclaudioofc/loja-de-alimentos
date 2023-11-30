import 'package:flutter/material.dart';

import '../app/app_text_styles.dart';

class HeaderLogo extends StatefulWidget {
  const HeaderLogo({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<HeaderLogo> createState() => _HeaderLogoState();
}

class _HeaderLogoState extends State<HeaderLogo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          widget.title,
          style: AppTextStyles.h1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 64,
        )
      ],
    );
  }
}
