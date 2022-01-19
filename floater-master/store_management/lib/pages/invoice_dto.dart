// import 'lineItem.dart';

// class NewInvoice {
//   final date = DateTime.now();
//   List<LineItem> lineItems = [];

//   void addItem(String productName, double quantity, double mrp) {
//     final lineItem =
//         LineItem(productName: productName, quantity: quantity, mrp: mrp);

//     this.lineItems.add(lineItem);
//   }

//   double calcTotalAmount() {
//     double totalAmount = 0;
//     for (var lineItem in this.lineItems) {
//       totalAmount = totalAmount + lineItem.amount;
//     }
//     return totalAmount;
//   }

//   double calcTotalAmountWithTax() {
//     double totalAmountWithTax = 0;
//     for (var lineItem in this.lineItems) {
//       totalAmountWithTax = totalAmountWithTax + lineItem.amount;
//     }
//     return totalAmountWithTax;
//   }
// }
