import 'package:flutter/material.dart';
import 'package:progress_screens_el/widgets/login_text_field.dart';

class MyNameContainer extends StatefulWidget {
  const MyNameContainer({super.key});

  @override
  State<MyNameContainer> createState() => _MyNameContainerState();
}

class _MyNameContainerState extends State<MyNameContainer> {

  final nameController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  void nextStep(BuildContext context) {
    if(_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(nameController.text);

      print("Success to Next Step");
    } else {
      print("Not Success");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0,top: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "My Name is",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 24.0,
                      ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: LoginTextField(
                    hintText: "Enter your name",
                    validator: (value) {
                      if(value != null && value.isNotEmpty && value.length < 1) {
                        return "Your name should be more than 1 characters";
                      } else if (value != null && value.isEmpty) {
                        return "Please type your name";
                      }
                      return null;
                    },
                    controller: nameController,
                ),
              ),
              SizedBox(
                  height:500
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)
                      ),
                        onPressed: () {
                          if(_formkey.currentState!.validate()) {
                            nextStep(context);
                          } else {
                            null;
                          }
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300
                          ),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height:200
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }

}
