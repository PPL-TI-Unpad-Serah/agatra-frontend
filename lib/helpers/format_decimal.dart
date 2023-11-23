String formatDecimal(double n, {int decimals = 2}) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : decimals);
}