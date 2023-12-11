import 'dart:io';
import 'dart:typed_data';

import 'package:carrot_feirinha/src/style/app_colors.dart';
import 'package:carrot_feirinha/src/utils/image_upload.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ProductImageInput extends StatefulWidget {
  const ProductImageInput({
    Key? key,
    required this.urlImgProduct,
    required this.onImageSelected,
  }) : super(key: key);

  final String urlImgProduct;
  final Function(String) onImageSelected;

  @override
  State<ProductImageInput> createState() => _ProductImageInputState();
}

class _ProductImageInputState extends State<ProductImageInput> {
  XFile? _image;
  // Uint8List? imageBytes;

  void _selecetImage() async {
    XFile img = await pickImage(ImageSource.gallery);
    // imageBytes = await img.readAsBytes();
    setState(() {
      _image = img;
    });
    widget.onImageSelected(_image!.path);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selecetImage,
      child: _image != null
          ? CircleAvatar(
              radius: 64,
              backgroundImage: FileImage(File(_image!.path)),
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: AppColors.gray800,
                ),
              ),
            )
          : Container(
              width: 124,
              height: 124,
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(
                    64), // Ajuste o valor conforme necessário
              ),
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: AppColors.gray800,
                ),
              ),
            ),
    );
  }
}
