import 'package:flutter/material.dart';

import '../../app/app.dart';

class HeaderTitle extends StatefulWidget {
  const HeaderTitle({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HeaderTitle> createState() => _HeaderTitleState();
}

class _HeaderTitleState extends State<HeaderTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.title??"",
          style: AppTextStyles.h1,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 64,
        )
      ],
    );
  }
}
