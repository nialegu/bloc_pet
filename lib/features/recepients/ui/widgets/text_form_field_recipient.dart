import 'package:flutter/material.dart';

class TextFormFieldRecipient extends StatelessWidget {
  final String label;
  final String? hint;
  final dynamic value;

  TextFormFieldRecipient({
    super.key,
    required this.label,
    this.hint,
    this.value,
  });

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        controller: _controller,
        initialValue: value,
        decoration: InputDecoration(
          hintText: hint,
          label: Text(label),
          suffixIcon: IconButton(
            onPressed: () {
              _controller.clear();
            },
            icon: const Icon(Icons.clear),
          ),
        ),
      ),
    );
  }
}
