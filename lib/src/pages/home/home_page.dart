import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/pages/components/label_title_product.dart';
import 'package:carrot_feirinha/src/shared/components/card_product.dart';
import 'package:flutter/material.dart';

import '../../shared/components/context_main.dart';
import '../../shared/components/input_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ContextMain(),
          SizedBox(
            height: 24,
          ),
          InputSearch(),
          SizedBox(
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
          LabelTitleProduct(
            label: "Ofertas Exclusicas",
            labelAction: "ver mais",
            onPressed: () {},
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 240,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardProduct(
                  nameProduct: "Abacate",
                  price: 6,
                  quantityProduct: 12,
                  urlImage: "assets/images/abacate.png",
                ),
                CardProduct(
                  nameProduct: "Caju",
                  price: 3,
                  quantityProduct: 24,
                  urlImage: "assets/images/caju.png",
                ),
                CardProduct(
                  nameProduct: "Goiaba",
                  price: 2.5,
                  quantityProduct: 6,
                  urlImage: "assets/images/goiaba.png",
                ),
                CardProduct(
                  nameProduct: "Manga",
                  price: 5,
                  quantityProduct: 23,
                  urlImage: "assets/images/manga.png",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          LabelTitleProduct(
            label: "Mais Vendidos",
            labelAction: "ver mais",
            onPressed: () {},
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 240,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardProduct(
                  nameProduct: "Alface",
                  price: 6.5,
                  quantityProduct: 2,
                  urlImage: "assets/images/alface.png",
                ),
                CardProduct(
                  nameProduct: "Cebola",
                  price: 3.5,
                  quantityProduct: 14,
                  urlImage: "assets/images/cebola.png",
                ),
                CardProduct(
                  nameProduct: "Cenoura",
                  price: 5,
                  quantityProduct: 12,
                  urlImage: "assets/images/cenoura.png",
                ),
                CardProduct(
                  nameProduct: "Pimentão",
                  price: 1.5,
                  quantityProduct: 12,
                  urlImage: "assets/images/pimentao.png",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 112,
          ),
        ],
      ),
    );
  }
}
