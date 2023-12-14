import 'package:carrot_feirinha/src/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../components/buttons/custom_button.dart';
import '../style/app_colors.dart';

class ProductDetailsPage extends StatefulWidget {
  final String productName;
  final double productPrice;
  final String productImageUrl;
  final String? details;

  const ProductDetailsPage({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImageUrl,
    this.details,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    int quantity = 1;

    void onIncremente() {
      setState(() {
        if (quantity <= 9) quantity++;
      });
    }

    void onDecrement() {
      setState(() {
        if (quantity >= 2) quantity--;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange500,
        title: Text(
          "Detalhes",
          style: AppTextStyles.h3.copyWith(
            color: AppColors.gray50,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                widget.productImageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productName,
                      style: AppTextStyles.h2,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Descrição",
                      style: AppTextStyles.h3,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      widget.details!,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.gray400,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  color: AppColors.green300,
                                ),
                                onPressed: onIncremente,
                              ),
                              Text(quantity.toString()),
                              IconButton(
                                onPressed: onDecrement,
                                icon: const Icon(
                                  Icons.remove,
                                  color: AppColors.gray400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: CustomButton(
                            label: "Adicionar",
                            onTap: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Center(
                                    child: Text('Adicionado ao carrinho'),
                                  ),
                                  backgroundColor: AppColors.green400,
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
