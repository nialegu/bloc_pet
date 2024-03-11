import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/bloc/config_bloc.dart';
import 'package:flutter_application_1/features/recepients/bloc/form_recepient_bloc/form_recipient_bloc_bloc.dart';
import 'package:flutter_application_1/features/recepients/ui/widgets/text_form_field_recipient.dart';

class AddRecipientForm extends StatelessWidget {
  final ScrollController scrollController;
  AddRecipientForm({super.key, required this.scrollController});

  final _formBloc = getIt.get<FormRecipientBlocBloc>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      onPopInvoked: (didPop) {
        // cancel values
      },
      child: SingleChildScrollView(
        controller: scrollController,
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
            // InkWell(
            //   onTap: () {
            //     _formBloc.getValuesForAddingRecepient();
            //   },
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Theme.of(context).buttonTheme.colorScheme!.onPrimary,
            //         borderRadius: BorderRadius.circular(15)),
            //     padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            //     child: Text(
            //       "Add",
            //       style: Theme.of(context).textTheme.headlineSmall,
            //     ),
            //   ),
            // )
            ElevatedButton(
              onPressed: () {
                _formBloc.getValuesForAddingRecepient();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).buttonTheme.colorScheme!.onPrimary,
                    borderRadius: BorderRadius.circular(15)),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  "Add",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
