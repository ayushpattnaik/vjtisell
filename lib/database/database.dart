import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, userCollection;

  static connect() async {
    db = await Db.create(
        "mongodb+srv://ayush:ayush@cluster75340.o1h0eyk.mongodb.net/?retryWrites=true&w=majority");
    await db.open();
    print("Databse connected");
    userCollection = db.collection("USER_COLLECTION");
    //testing
    await userCollection.insertMany([
      {
        'name': 'William Shakespeare',
        'email': 'william@shakespeare.com',
        'age': 587
      },
      {'name': 'Jorge Luis Borges', 'email': 'jorge@borges.com', 'age': 123}
    ]);

    await db.close();
  }
}
