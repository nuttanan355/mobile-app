
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DBLocal {
  var dbname = "TCT";

  Future<Database> connectDB() async {

    dynamic directory = await getApplicationDocumentsDirectory();
    
    var location = join(directory.path, this.dbname);
 
    var createDB = databaseFactoryIo;
    var db = await createDB.openDatabase(location);

    return db;
  }

  Future<void> register(name, surname, email, password) async {
    var db = await this.connectDB();
    var store = intMapStoreFactory.store('user');

    var user = await store.add(db, {
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
    });

    print(user);

    await store.find(db).then((response) {
      print(response);
    }).catchError((onError) {
      print(onError);
    });

    db.close();
  }

 Future<bool> login(email, password) async {
    var db = await this.connectDB();
    var store = intMapStoreFactory.store('user');

    var user = await store.find(db);

    for (var item in user) {
      if (item['email'] == email && item['password'] == password) {
        return true;
      }
    }

    return false;
  }
  
}