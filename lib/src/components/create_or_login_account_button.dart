import 'package:flutter/material.dart';

import '../app/app_colors.dart';
import '../app/app_text_styles.dart';

class CreateOrLoginAccountButton extends StatefulWidget {
  const CreateOrLoginAccountButton({
    Key? key,
    required this.label,
    required this.link,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final String link;
  final void Function() onPressed;

  @override
  State<CreateOrLoginAccountButton> createState() =>
      _CreateOrLoginAccountButtonState();
}

class _CreateOrLoginAccountButtonState
    extends State<CreateOrLoginAccountButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: widget.onPressed,
        child: RichText(
          text: TextSpan(
            text: widget.label,
            style: AppTextStyles.h4,
            children: [
              TextSpan(
                text: widget.link,
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.green600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
