import 'package:flutter/material.dart';

import '../../app/app.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: TextField(
        controller: widget.controller,
        decoration: const InputDecoration(
          filled: true,
          fillColor: AppColors.gray100,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.gray100,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: 'Pesquisar produto',
          labelStyle: TextStyle(
            color: AppColors.gray600,
          ),
        ),
      ),
    );
  }
}
