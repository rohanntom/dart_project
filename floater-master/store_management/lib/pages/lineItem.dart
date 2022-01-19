abstract class LineItem {
  final String productName;
  final double quantity;
  final double mrp;

  double get amount {
    return this.mrp * this.quantity * 0.18;
  }

  double get tax {
    return this.mrp * 0.18;
  }

  LineItem(
      {required this.productName, required this.quantity, required this.mrp});
}
