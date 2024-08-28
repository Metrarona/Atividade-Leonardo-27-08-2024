import 'package:dart_bank/models/account.dart';

void transferService(Account origin, Account destination, double value) {
  origin.removeBalance(value);
  destination.addBalance(value);

  if (origin == destination) {
    throw ArgumentError("Transferencia da mesma conta não permitida");
  }

  if (value <= 0) {
    throw ArgumentError("Valor de transferemcia invalido. Deve ser maior que zero");
  }

  if (value > origin.getBalance()) {
    throw ArgumentError("saldo insuficiente na conta de origem");
  }

}
