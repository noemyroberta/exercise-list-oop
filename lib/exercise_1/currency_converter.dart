class CurrencyConverter {
  static const double _IOF = 0.06;

  static double dollarToReal(double amount, double dollarPrice) =>
      (amount * dollarPrice) * (1.0 + _IOF);
}
