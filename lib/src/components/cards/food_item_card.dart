import 'package:carrot_feirinha/src/app/app.dart';
import 'package:flutter/material.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    Key? key,
    required this.urlImage,
    required this.price,
    required this.nameProduct,
    required this.quantityProduct,
  }) : super(key: key);

  final String urlImage;
  final double price;
  final String nameProduct;
  final double quantityProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Container(
        width: 196,
        height: 240,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 20,
                ),
                width: 96,
                height: 74,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(urlImage),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameProduct,
                    style: AppTextStyles.h4,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "$quantityProduct unidades, preço",
                    style: AppTextStyles.h4.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R\$ $price",
                    style: AppTextStyles.h4,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green300,
                      minimumSize: const Size(36, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.gray50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
