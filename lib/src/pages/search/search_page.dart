import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:carrot_feirinha/src/components/cards/varied_item_card.dart';
import 'package:carrot_feirinha/src/components/inputs/search_input.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 24,
              children: const [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: VariedItemCard(
                    urlImage: "assets/images/vegetais.png",
                    label: "Vegetais",
                    color: AppColors.green100,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: VariedItemCard(
                    urlImage: "assets/images/frutas.png",
                    label: "Frutas",
                    color: AppColors.yellow500,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: VariedItemCard(
                    urlImage: "assets/images/carnes.png",
                    label: "Carnes",
                    color: AppColors.red500,
                  ),
                ),
              ],
            ),
          ),
          // const Wrap(
          //   spacing: 24,
          //   runSpacing: 20,
          //   children: [
          //     VariedItemCard(
          //       urlImage: "assets/images/vegetais.png",
          //       label: "Vegetais",
          //       color: AppColors.green100,
          //     ),
          //     VariedItemCard(
          //       urlImage: "assets/images/frutas.png",
          //       label: "Frutas",
          //       color: AppColors.yellow500,
          //     ),
          //     VariedItemCard(
          //       urlImage: "assets/images/carnes.png",
          //       label: "Carnes",
          //       color: AppColors.red500,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
