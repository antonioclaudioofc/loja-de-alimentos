import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({
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
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
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
            side: BorderSide(
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
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 20,
                ),
                width: 96,
                height: 74,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.urlImage),
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
                    widget.nameProduct,
                    style: AppTextStyles.subtitle,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "${widget.quantityProduct} unidades, preço",
                    style: AppTextStyles.h4.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
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
                    "R\$ ${widget.price}0",
                    style: AppTextStyles.subtitle,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green300,
                      minimumSize: Size(36, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: Icon(
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
