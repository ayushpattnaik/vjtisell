import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, userCollection;

  static connect() async {
    db = await Db.create(
        "mongodb+srv://ayush:ayush@cluster75340.o1h0eyk.mongodb.net/?retryWrites=true&w=majority");
    await db.open();
    print("Databse connected");
    userCollection = db.collection("USER_COLLECTION");
  }
}
