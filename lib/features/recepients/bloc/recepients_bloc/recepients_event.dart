part of 'recepients_bloc.dart';

@immutable
sealed class RecipientsEvent {}

class AddRecepient extends RecipientsEvent {
  AddRecepient({required this.name, required this.surname});

  final String name;
  final String surname;
}

class DeleteRecepient extends RecipientsEvent {
  DeleteRecepient({required this.recepientId});

  final int recepientId;
}

class EditRecepient extends RecipientsEvent {
  EditRecepient({this.name, this.surname});

  final String? name;
  final String? surname;
}
