// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

image_selector_gallery() async {
  var galleryFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  print(galleryFile!.path);
}

postad_screen() {
  return Column(children: [
    // const Text("Tikoo"),
    ButtonBar(
      children: [
        SizedBox(
          height: 200,
          width: 1000,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.all(20) //content padding inside button
                ),
            onPressed: () {
              image_selector_gallery();
            },
            child: const Icon(
              Icons.camera_alt_rounded,
              size: 50,
            ),
            // child: const Text("Add Photo"),
          ),
        )
      ],
    ),
    const Text("Product Name"),
    const Text("Estimated Cost"),
    const Text("Product Description"),
    // runApp(MyApp())
  ]);
}

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Form Demo';  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: MyCustomForm(),  
      ),  
    );  
  }  
}  


class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class, which holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter your full name',  
              labelText: 'Name',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter valid phone number';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.calendar_today),  
            hintText: 'Enter your date of birth',  
            labelText: 'Dob',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter valid date';  
              }  
              return null;  
            },  
           ),  
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new ElevatedButton(  
                child: const Text('Submit'),  
                onPressed: () {  
                  // It returns true if the form is valid, otherwise returns false  
                  // if (_formKey.currentState!.validate()) {  
                  //   // If the form is valid, display a Snackbar.  
                  //   Scaffold.of(context)  
                  //       .showSnackBar(SnackBar(content: Text('Data is in processing.')));  
                  // }  
                },  
              )),  
        ],  
      ),  
    );  
  }  
}