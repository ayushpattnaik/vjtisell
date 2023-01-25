import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


image_selector_gallery() async {
  var galleryFile =  await ImagePicker().pickImage(source: ImageSource.gallery);
  print(galleryFile!.path);
}

postad_screen(){
   return Center(
    child: ButtonBar( 
              children: [
                ElevatedButton (
                  child: const Text("Add Photo"),
                  // textColor: Colors.white,
                  // color: Colors.green,
                  onPressed: (){
                    image_selector_gallery();
                  },
                ),
              ],
            ),
  );
}