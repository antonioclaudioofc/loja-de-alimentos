import 'package:flutter/material.dart';

import '../../app/app.dart';

class FormProductPage extends StatefulWidget {
  const FormProductPage({super.key});

  @override
  State<FormProductPage> createState() => _FormProductPageState();
}

class _FormProductPageState extends State<FormProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 64,
          right: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                "Produto",
                style: TextStyle(
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PagePaths.navigationPath,
                );
              },
              icon: Icon(
                Icons.close,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
