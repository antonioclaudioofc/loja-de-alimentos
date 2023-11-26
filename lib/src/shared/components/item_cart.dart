import 'package:carrot_feirinha/src/app/app.dart';
import 'package:carrot_feirinha/src/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  const ItemCart({super.key});

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            "assets/images/cenoura.png",
            width: 60,
            height: 60,
            fit: BoxFit.fitWidth,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cenoura",
                style: AppTextStyles.labelInput.copyWith(
                  color: AppColors.black,
                ),
              ),
              Text(
                "1 unid, preço",
                style: AppTextStyles.h4.copyWith(
                  color: AppColors.gray500,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: AppColors.gray50,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: AppColors.gray200,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: AppTextStyles.labelInput.copyWith(
                        color: AppColors.black,
                      ),
                      hintText: '2',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: AppColors.gray50,
                      contentPadding: EdgeInsets.all(2.0),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: AppColors.gray50,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: AppColors.gray200,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.remove),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.close),
              Text(
                "R\$ 1,50",
                style: AppTextStyles.labelInput.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
