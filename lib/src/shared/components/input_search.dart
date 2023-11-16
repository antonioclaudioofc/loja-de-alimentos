import 'package:flutter/material.dart';

import '../../app/app.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.gray100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: 'Pesquisar produto',
          labelStyle: TextStyle(
            color: AppColors.gray700,
          ),
        ),
      ),
    );
  }
}
