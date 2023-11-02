import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.assetName = "assets/images/logo.svg",
    this.width = 56,
  }) : super(key: key);

  final String assetName;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 44,
      ),
      child: SvgPicture.asset(
        assetName,
        width: width,
        alignment: Alignment.center,
      ),
    );
  }
}
