import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/shared/components/card_classification.dart';
import 'package:carrot_feirinha/src/shared/components/input_search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              bottom: 32,
            ),
            child: Text(
              "Categorias",
              style: AppTextStyles.h3,
            ),
          ),
          InputSearch(),
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 24,
            runSpacing: 20,
            children: [
              CardClassification(
                urlImage: "assets/images/vegetais.png",
                label: "Vegetais",
                color: AppColors.green100,
              ),
              CardClassification(
                urlImage: "assets/images/frutas.png",
                label: "Frutas",
                color: AppColors.yellow500,
              ),
              CardClassification(
                urlImage: "assets/images/carnes.png",
                label: "Carnes",
                color: AppColors.red500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
