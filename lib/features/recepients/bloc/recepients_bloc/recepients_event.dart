part of 'recepients_bloc.dart';

@immutable
sealed class RecepientsEvent {}

class AddRecepient extends RecepientsEvent{
  AddRecepient({required this.name, required this.surname});

  final String name;
  final String surname;
}

class DeleteRecepient extends RecepientsEvent{
  DeleteRecepient({required this.recepientId});

  final int recepientId;
}

class EditRecepient extends RecepientsEvent{
  EditRecepient({this.name, this.surname});

  final String? name;
  final String? surname;
}