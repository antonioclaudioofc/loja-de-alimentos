import 'package:carrot_feirinha/src/shared/components/default_input_name.dart';
import 'package:carrot_feirinha/src/shared/components/input_classification.dart';
import 'package:carrot_feirinha/src/shared/components/input_image.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';

class FormProductPage extends StatefulWidget {
  const FormProductPage({super.key});

  @override
  State<FormProductPage> createState() => _FormProductPageState();
}

class _FormProductPageState extends State<FormProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 40,
          bottom: 16,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Produto",
                  style: AppTextStyles.h3,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      PagePaths.navigationPath,
                    );
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              height: 64,
            ),
            InputImage(),
            DefaultInputName(),
            InputClassification(),
          ],
        ),
      ),
    );
  }
}
