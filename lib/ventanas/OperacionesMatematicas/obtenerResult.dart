import 'package:app_cal/components/Converter.dart';
import 'package:app_cal/components/OperacioneBinarias.dart';

class ObtenerResult {
  String SumaBinaria(String val1, String val2) {
    String result = Converterto()
        .decimalBinario(OperacionesBinarias().Sumar(
            double.parse(Converterto().binaryToDecimal(val1)),
            double.parse(Converterto().binaryToDecimal(val2))))
        .toString();
    return result;
  }

  String RestaBinaria(String val1, String val2) {
    String result = Converterto()
        .decimalBinario(OperacionesBinarias().Restar(
            double.parse(Converterto().binaryToDecimal(val1)),
            double.parse(Converterto().binaryToDecimal(val2))))
        .toString();
    return result;
  }
}
