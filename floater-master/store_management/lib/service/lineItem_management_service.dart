import 'dart:ffi';

import 'package:example/pages/lineItem.dart';
import 'package:floater/floater.dart';

class LineItemManagementService {
  final _lineItemService = ServiceLocator.instance.resolve<LineItem>();

  LineItem? _lineItem;

  bool get isNewLineItem => this._lineItem == null;

  String? _productName;
  String? get productName => this._productName;

  Double? _quantity;
  Double? get quantity => this._quantity;

  Double? _mrp;
  Double? get mrp => this._mrp;

  Future<void> init(String? id) async {
    // if (id != null) this._lineItem = await this._lineItemService.(id);
    // if a todo is passed copy the title and description or else leave it null.
    this._productName = this._lineItem?.productName;
    this._quantity = this._lineItem!.quantity as Double?;
  }

  void setProductName(String productName) {
    given(productName, "productName")
        .ensure((t) => t.isNotEmptyOrWhiteSpace && t.trim().length < 50);

    this._productName = productName;
  }

  void setQuantity(Double? quantity) {
    given(quantity, "quantity").ensure((t) => t == null);

    this._quantity = quantity ?? null;
  }

  void setMRP(Double? mrp) {
    given(mrp, "MRP").ensure((t) => t == null);

    this._mrp = mrp ?? null;
  }
  // Future<void> complete() async {
  //   given(this, "this").ensure((t) => t._productName != null);

  //   // if a todo was not passed that means you are creating a new one, else you are updating the todo passed.
  //   if (this.isNewLineItem) {
  //     await this
  //         ._lineItemService
  //         .createTodo(this._productName!, this._quantity);
  //     return;
  //   }

  //   await this._lineItem!.update(this._productName!, this._quantity);
  // }
}
