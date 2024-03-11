import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/recepients/ui/widgets/text_form_field_recipient.dart';

class AddRecipientForm extends StatelessWidget {
  const AddRecipientForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormFieldRecipient(
            label: "Name",
            hint: "Enter name",
          ),
          TextFormFieldRecipient(
            label: "Surname",
            hint: "Enter surname",
          ),
          DatePickerDialog(
            firstDate: DateTime(1950, 1, 1),
            lastDate: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
