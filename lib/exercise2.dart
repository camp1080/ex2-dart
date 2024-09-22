import 'dart:io';
import 'dart:math';

class Lucky {
  late final int randomValue;

  Lucky() {
    Map<String, String> envVars = Platform.environment;    

    String? minValue = envVars['MIN'];
    String? maxValue = envVars['MAX'];

    if (minValue != null && maxValue != null) {
      int min = int.parse(minValue);
      int max = int.parse(maxValue);
    Random random = Random();
    randomValue = min + random.nextInt(max - min + 1);

    } else {
      throw Exception("You need to have MIN and MAX variables created in your ENV");
    }
  }
}