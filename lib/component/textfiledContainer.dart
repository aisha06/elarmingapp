import 'package:flutter/material.dart';

class TextfiledConatiner extends StatelessWidget {
  String labeltext;
  String hinttext;
  TextfiledConatiner({
    super.key,required this.labeltext,required this.hinttext,
    required TextEditingController repasswordController,
    required TextEditingController passwordController,
  })  : _repasswordController = repasswordController,
        _passwordController = passwordController;

  final TextEditingController _repasswordController;
  final TextEditingController _passwordController;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
        child: TextFormField(
          controller: _repasswordController,
          obscureText: true,
          decoration:  InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(width: 4.0),
                borderRadius: BorderRadius.circular(10), // Set the BorderRadius here
              ),

              labelText: labeltext,
              hintText: hinttext),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please re-enter password';
            }
            print(_passwordController.text);
            print(_repasswordController.text);
            if (_passwordController.text != _repasswordController.text) {
              print("saved");
              return "Password does not match";
            }
            return null;
          },

          onSaved: (value) {
            _repasswordController.text = value!;
          },
          //validatePassword,
          //validatePassword,        //Function to check validation
        ),
      ),
    );
  }
}