import 'package:exercise2/exercise2.dart';

void main(List<String> arguments) {

  if (arguments.isEmpty) {
    print("This program expects you to provide name in the command line as arguments ");
    return;
  }

  for (var name in arguments) {
    String capitalizedName = name[0].toUpperCase() + name.substring(1);

    Lucky lucky = Lucky();

    print("Hello $capitalizedName. Your lucky number is ${lucky.randomValue}");
  }
}
