class AppPricingCalculator {
  static double calculateTotalPrice(double servicePrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = servicePrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = servicePrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double servicePrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double servicePrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = servicePrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.12;
  }

  static double getShippingCost(String location) {
    return 0.3;
  }

  // static double calculateCartTotal(CartModel cart) {
  //   return cart.item.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
