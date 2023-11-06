import 'package:flutter/material.dart';

import '../../app/app.dart';

class LabelTogleLogin extends StatefulWidget {
  const LabelTogleLogin({Key? key, this.label, this.labelLink, required this.onPressed}) : super(key: key);

  final String? label;
  final String? labelLink;
  final void Function()? onPressed;

  @override
  State<LabelTogleLogin> createState() => _LabelTogleLoginState();
}

class _LabelTogleLoginState extends State<LabelTogleLogin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: widget.onPressed,
        child: RichText(
          text: TextSpan(
            text: widget.label,
            style: AppTextStyles.labelInput,
            children: [
              TextSpan(
                text: widget.labelLink,
                style: AppTextStyles.labelInput.copyWith(
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
