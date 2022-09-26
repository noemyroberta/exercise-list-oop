import 'currency_converter.dart';

void main() {
  double dollarPrice = 3.10;
  double amount = 200.00;

  double result = CurrencyConverter.dollarToReal(amount, dollarPrice);
  print('Amount to be paid in reais = $result');
}