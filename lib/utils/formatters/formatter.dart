
import 'package:intl/intl.dart';

class TFormatter
{
  static String formatDate(DateTime? date)
  {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount)
  {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber)
  {
    if (phoneNumber.length == 10)
    {
      return '(${phoneNumber.substring(0, 1)}) ${phoneNumber.substring(2,5)} ${phoneNumber.substring(5)}';
    }else if (phoneNumber.length == 11)
    {
      return '(${phoneNumber.substring(0, 2)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }
}