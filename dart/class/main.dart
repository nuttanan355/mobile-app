import 'city.dart';
import 'country.dart';

void main() {
  print("Hi Association of South East AsianNations");

  // Country item = new Country.thai("กรุงฮานอย","แมว");
  // print("Hi "+item.country);
  // print("Hi "+item.city);
  // item.callHello();
  // item.callAnimal();
  var order = City();
  print("Welcome to "+order.country);
  print("National Language to " + order.callLanguage());
  order.callSuper();
  order.callProblem();

}
