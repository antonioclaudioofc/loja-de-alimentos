import 'package:flutter/material.dart';

import '../style/app_text_styles.dart';

class CustomOrdersPage extends StatelessWidget {
  const CustomOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Pedidos",
            style: AppTextStyles.h3,
          ),
          const Divider(),
          ListTile(
            title: Text("Order #123"),
            subtitle: Column(
              children: [
                Text("Antonio"),
                Text("Total: \$50.00"),
                Text("Status: Em andamento")
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text("Order #123"),
            subtitle: Column(
              children: [
                Text("Antonio"),
                Text("Total: \$50.00"),
                Text("Status: Em andamento")
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
