
class Country {
  var country = "Vietnam";
  var city;
  var _language = "ไก่";
  static var color ="Buler";

  Country(this.city, this._language);
  Country.thai(String city, String am) : this(city, am);

  void callHello() {
    print("Hi thai");
  }

  String callLanguage() {
    return this._language;
  }
}
