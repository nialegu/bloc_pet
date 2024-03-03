part of 'recepients_bloc.dart';

@immutable
sealed class RecepientsState {
  const RecepientsState({required this.recepients});

  final List<Recepient> recepients;
}

final class RecepientsInitial extends RecepientsState {
  const RecepientsInitial({required this.recepients}) : super(recepients: recepients);

  final List<Recepient> recepients;
}
