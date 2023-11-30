import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

import '../../components/cards/category_card.dart';
import '../../components/cards/food_item_card.dart';
import '../../components/cards/offer_card.dart';
import '../../components/inputs/search_input.dart';
import '../../components/location_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const LocationLogo(),
          const SizedBox(
            height: 24,
          ),
          SearchInput(controller: _controllerSearch),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Image.asset(
              "assets/images/fruits.jpg",
              width: double.infinity,
              height: 112,
              fit: BoxFit.fitWidth,
            ),
          ),
          OfferCard(
            label: "Ofertas Exclusicas",
            labelAction: "ver mais",
            onPressed: () {},
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 240,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                FoodItemCard(
                  nameProduct: "Abacate",
                  price: 6,
                  quantityProduct: 12,
                  urlImage: "assets/images/abacate.png",
                ),
                FoodItemCard(
                  nameProduct: "Caju",
                  price: 3,
                  quantityProduct: 24,
                  urlImage: "assets/images/caju.png",
                ),
                FoodItemCard(
                  nameProduct: "Goiaba",
                  price: 2.5,
                  quantityProduct: 6,
                  urlImage: "assets/images/goiaba.png",
                ),
                FoodItemCard(
                  nameProduct: "Manga",
                  price: 5,
                  quantityProduct: 23,
                  urlImage: "assets/images/manga.png",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OfferCard(
            label: "Mais Vendidos",
            labelAction: "ver mais",
            onPressed: () {},
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 240,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                FoodItemCard(
                  nameProduct: "Alface",
                  price: 6.5,
                  quantityProduct: 2,
                  urlImage: "assets/images/alface.png",
                ),
                FoodItemCard(
                  nameProduct: "Cebola",
                  price: 3.5,
                  quantityProduct: 14,
                  urlImage: "assets/images/cebola.png",
                ),
                FoodItemCard(
                  nameProduct: "Cenoura",
                  price: 5,
                  quantityProduct: 12,
                  urlImage: "assets/images/cenoura.png",
                ),
                FoodItemCard(
                  nameProduct: "Pimentão",
                  price: 1.5,
                  quantityProduct: 12,
                  urlImage: "assets/images/pimentao.png",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          OfferCard(
            label: "Mantimentos",
            labelAction: "ver mais",
            onPressed: () {},
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 96,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const CategoryCard(
                  urlImage: "assets/images/arroz.png",
                  label: "Arroz",
                  color: AppColors.gray200,
                ),
                CategoryCard(
                  urlImage: "assets/images/suco.png",
                  label: "Bebidas",
                  color: AppColors.yellow500.withOpacity(0.5),
                ),
                CategoryCard(
                  urlImage: "assets/images/paes.png",
                  label: "Paẽs",
                  color: AppColors.orange500.withOpacity(0.5),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
