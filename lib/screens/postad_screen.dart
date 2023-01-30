import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


helper() {
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
    // const Text("Product Name"),
    // const Text("Estimated Cost"),
    // const Text("Product Description"),
    // runApp(MyApp())
  ]);
}

image_selector_gallery() async {
  var galleryFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  print(galleryFile!.path);
}

class postad_screen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Post Ad';
    return MaterialApp(  
      // title: appTitle,  
      home: Scaffold(  
        resizeToAvoidBottomInset: false,
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: 
        SingleChildScrollView(
          child: Column(
            children:[
              helper(),
              add_product_form(), 
            ]
          ) 
        )
      ),  
    );  
  }  
}  


class add_product_form extends StatefulWidget {  
  @override  
  add_product_formState createState() {  
    return add_product_formState();  
  }  
}  
// Create a corresponding State class, which holds data related to the form.  
class add_product_formState extends State<add_product_form> {  
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
              // hintText: 'Product Name',  
              labelText: 'Product Name',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter name of the product';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.attach_money),  
              // hintText: 'Cost',  
              labelText: 'Cost',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter estimated value';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.list),  
            // hintText: 'Description',  
            labelText: 'Description',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter description';  
              }  
              return null;  
            },  
           ),  
          Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: ElevatedButton(  
                child: const Text('Submit'),  
                onPressed: () {
                  print("Tikoo");
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