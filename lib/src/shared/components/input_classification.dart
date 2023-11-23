import 'package:flutter/material.dart';

class InputClassification extends StatefulWidget {
  const InputClassification({super.key});

  @override
  State<InputClassification> createState() => _InputClassificationState();
}

class _InputClassificationState extends State<InputClassification> {
  @override
  Widget build(BuildContext context) {
    String _selectedOption = 'Opção 1'; // Opção padrão

    return DropdownButton<String>(
      value: _selectedOption,
      
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue!;
        });
      },
      items: <String>['Opção 1', 'Opção 2', 'Opção 3', 'Opção 4']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
