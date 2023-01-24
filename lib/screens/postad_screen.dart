import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:mongo_dart/mongo_dart.dart';


image_selector_gallery() async {
  var galleryFile =  await ImagePicker().pickImage(source: ImageSource.gallery);
  print(galleryFile!.path);
}

postad_screen(){
   return Center(
    child: ButtonBar( 
              children: [
                ElevatedButton (
                  child: Text("Add Photo"),
                  // textColor: Colors.white,
                  // color: Colors.green,
                  onPressed: (){
                    image_selector_gallery();
                  },
                ),
              ],
            )

  );

}