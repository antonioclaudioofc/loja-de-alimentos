import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:carrot_feirinha/src/components/cards/varied_item_card.dart';
import 'package:carrot_feirinha/src/components/inputs/search_input.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 40,
              bottom: 32,
            ),
            child: Text(
              "Categorias",
              style: AppTextStyles.h3,
            ),
          ),
          SearchInput(controller: _controllerSearch),
          const SizedBox(
            height: 20,
          ),
          const Wrap(
            spacing: 24,
            runSpacing: 20,
            children: [
              VariedItemCard(
                urlImage: "assets/images/vegetais.png",
                label: "Vegetais",
                color: AppColors.green100,
              ),
              VariedItemCard(
                urlImage: "assets/images/frutas.png",
                label: "Frutas",
                color: AppColors.yellow500,
              ),
              VariedItemCard(
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
