import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{
   City(): super("Hanoi","แมว");

void callSuper(){
  print("Capital to "+super.city);
  super.callHello();
}
  @override
  String callLanguage() {
    return "Vietnamese";
  }

}
