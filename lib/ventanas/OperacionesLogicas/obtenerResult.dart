import 'package:app_cal/components/Converter.dart';
import 'package:app_cal/components/OperacionesLogicas.dart';

class ObtenerResultLogicas {
  String R_AND(String val1, String val2) {
    val1 = Converterto().binaryToDecimal(val1);
    val2 = Converterto().binaryToDecimal(val2);
    int result = OperacionesLogicas().and(double.parse(val1), double.parse(val2));
    String binarioResult = Converterto().decimalBinario(result.toDouble());
    return binarioResult;
  }
  String R_OR(String val1, String val2) {
    val1 = Converterto().binaryToDecimal(val1);
    val2 = Converterto().binaryToDecimal(val2);
    int result = OperacionesLogicas().or(double.parse(val1), double.parse(val2));
    String binarioResult = Converterto().decimalBinario(result.toDouble());
    return binarioResult;
  }
  String R_XOR(String val1, String val2) {
    val1 = Converterto().binaryToDecimal(val1);
    val2 = Converterto().binaryToDecimal(val2);
    int result = OperacionesLogicas().xor(double.parse(val1), double.parse(val2));
    String binarioResult = Converterto().decimalBinario(result.toDouble());
    return binarioResult;
  }
}
