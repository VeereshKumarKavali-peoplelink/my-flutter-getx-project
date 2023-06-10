import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(key: _formKey, child: Column(children:
              [
        
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (GetUtils.isUsername(value!)) {
                      return null;
                    }
                    return "Enter valid username";
                  },
                  decoration: const InputDecoration(
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder()),
                ),
        
                const SizedBox(height: 20),
        
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (GetUtils.isEmail(value!)) {
                      return null;
                    }
                    return "Enter valid Email";
                  },
                  decoration: const InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      border: OutlineInputBorder()),
                ),
        
                const SizedBox(height: 20),
        
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (GetUtils.isPhoneNumber(value!)) {
                      return null;
                    }
                    return "Enter valid Phone Number";
                  },
                  decoration: const InputDecoration(
                      hintText: "Mobile Number",
                      labelText: "Mobile Number",
                      border: OutlineInputBorder()),
                ),
        
        
                ElevatedButton(onPressed: (){
                  if (_formKey.currentState!.validate()){
                    // all are correct
                  }else{
                    //error
                  }
                }, child: const  Text("Submit"))
        
        
        
              ]
            )),
          ),
        ));
  }
}
