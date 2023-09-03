import 'package:flutter/material.dart';
import 'package:todo/ui/component/custom_form_feild.dart';

class RegisterScreen extends StatelessWidget {
static const String routName ="register";
var formKey =GlobalKey<FormState>();
var nameControler =TextEditingController();
var emailControler =TextEditingController();
var passwordControler =TextEditingController();
var confirmationpasswordControler =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Color(0xffDFECDB),
          image:DecorationImage(
        image: AssetImage("assets/images/auth_pattern.png"),
            fit: BoxFit.fill
      )),
      child:Scaffold(
        appBar: AppBar(title:Text("Register")),
        body: Container(
          padding: EdgeInsets.all(13),

          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.stretch,
                children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height*.3,
                ),
                CustomFormfeild(
                  controler: nameControler,
                    label: "Full Name",
                  keyboardType: TextInputType.name,
                  validator: (text) {
                    if(text==null||text.trim().isEmpty){
                      return "*please Enter the Full Name";
                    }
                    return null;
                  },
                ),
                CustomFormfeild(
                  controler: emailControler,
                    label: "Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if(text==null||text.trim().isEmpty){
                      return "*please Enter the Email";
                    }
                    var regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                    if(!regex.hasMatch(text)){
                      return "please Enter a valid Email";
                    }

                  },

                ),
                CustomFormfeild(
                  controler: passwordControler,
                    label: "password",
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                  validator: (text) {

                    if(text==null||text.trim().isEmpty){
                      return "*please Enter the password";
                    }
                    if(text.length<6){
                      return"password should be at least 6 char";
                    }

                  },
                ),
                CustomFormfeild(
                  controler: confirmationpasswordControler,
                    label: "Confirmation Password",
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                  validator: (text) {


                    if(text==null||text.trim().isEmpty){
                      return "*please Enter the Confirmation Password ";
                    }
                    if(passwordControler.text!= text){
                      return ' password does not match';
                    }

                  },
                ),
                ElevatedButton(

                  style:ElevatedButton.styleFrom(
                    padding:  EdgeInsets.symmetric(vertical: 8)
                  ) ,
                  onPressed: () {
                    register();

                },
                  child: Text("Register",
                    style:TextStyle(fontSize: 24) ),
                )
              ],

              ),
            ),
          ),
        ),
      ) ,);
  }
  void register(){
    formKey.currentState?.validate();

  }
}
