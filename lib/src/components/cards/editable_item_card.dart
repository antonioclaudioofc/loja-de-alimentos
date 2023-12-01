import 'package:carrot_feirinha/src/style/exports.dart';
import 'package:flutter/material.dart';

class EditableItemCard extends StatefulWidget {
  const EditableItemCard({
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
  State<EditableItemCard> createState() => _EditableItemCardState();
}

class _EditableItemCardState extends State<EditableItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Container(
        width: 160,
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
                    style: AppTextStyles.h4,
                  ),
                  const SizedBox(
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
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                "R\$ ${widget.price}0",
                style: AppTextStyles.h4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.edit,
                    color: AppColors.yellow500,
                  ),
                  Icon(
                    Icons.delete,
                    color: AppColors.red500,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
