class TPricingCalculator {

  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location)
  {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippinCost = getShippingCost(location);
    
    double totalPrice = productPrice + taxAmount + shippinCost;
    return totalPrice;
  }

    /// -- Calculate Shipping cost
    static String CalculateShippingCost(double productPrice, String location)
    {
      double shippingCost = getShippingCost(location);
      return shippingCost.toStringAsFixed(2);
    }

    /// -- Calculate Tax
    static String calculateTax(double productPrice, String location)
    {
      double taxRate = getTaxRateForLocation(location);
      double taxAmount = productPrice * taxRate;
      return taxAmount.toStringAsFixed(2);
    }
  
    static double getTaxRateForLocation(String location)
    {
      // lookup the shipping cost for the fiven location using a shipping rate API
      //return the appriate tax rate
      return 5.00; // example shipping cost of $5
    }

    static double getShippingCost(String location)
    { 
       // lookup the shipping cost for the fiven location using a shipping rate API
      //calculate the shippping cost based on various factors like distance, weight, etc/
      return 5.00;
    }

    // --- sum all cart values and return total amount
    // static double calculateCartTotal(CartModel cart)
    // {
    //   return cart.itens.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
    // }
}