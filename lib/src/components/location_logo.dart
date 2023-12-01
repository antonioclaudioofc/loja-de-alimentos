import 'package:flutter/material.dart';

import '../style/app_colors.dart';
import '../style/app_text_styles.dart';
import 'app_logo.dart';

class LocationLogo extends StatelessWidget {
  const LocationLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppLogo(
          width: 36,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: AppColors.gray700,
            ),
            Text(
              "Caxias, Maranhão",
              style: AppTextStyles.h4.copyWith(
                color: AppColors.gray700,
              ),
            ),
          ],
        )
      ],
    );
  }
}
