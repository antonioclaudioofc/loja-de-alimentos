import 'package:carrot_feirinha/src/pages/product_details_page.dart';
import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    Key? key,
    required this.urlImage,
    required this.price,
    required this.nameProduct,
    required this.quantityProduct,
    this.details,
  }) : super(key: key);

  final String urlImage;
  final double price;
  final String nameProduct;
  final int quantityProduct;
  final String? details;

  @override
  Widget build(BuildContext context) {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              productName: nameProduct,
              productPrice: price,
              productImageUrl: urlImage,
              details: details,
            ),
          ),
        );
      },
      child: Padding(
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
            shadows: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
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
                      "$quantityProduct unidades disponíveis",
                      style: AppTextStyles.h4.copyWith(
                        color: AppColors.gray500,
                      ),
                      softWrap: true,
                      maxLines: null,
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
                child: Text(
                  currencyFormat.format(price),
                  style: AppTextStyles.h3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
