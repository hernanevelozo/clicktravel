import 'package:clicktravel/login/database/signup_operations.dart';
import 'package:flutter/material.dart';

import 'package:clicktravel/login/database/login_operations.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  SignupOperations signupOperations = SignupOperations();

  final TextEditingController cpf = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //extendBody: true,
      ////bottomNavigationBar: BottomNavBar(index: 3),
      body: SingleChildScrollView(
         child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height,
                ),
          child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10, top: 40, bottom: 10),
                child: Row(children: [IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),]),
              ),
              Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Criar conta",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nome",
                          ),
                          obscureText: false,
                          controller: name,
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "CPF",
                          ),
                          obscureText: false,
                          controller: cpf,
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                          ),
                          obscureText: false,
                          controller: email,
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Telefone",
                          ),
                          obscureText: false,
                          controller: phone,
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Senha",
                          ),
                          obscureText: true,
                          controller: password,
                        ),
                      )
                    ],
                  ),
                ),

                Column(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 200,
                      ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          void createUser() async {
                            await signupOperations.createUser({'userCPF': cpf.text, 'userEmail': email.text, 'userName': name.text, 'userPassword': password.text, 'userPhone': phone.text});
                          }

                          createUser();

                          Navigator.pop(context);
                          
                        },
                        child: Text("Cadastrar", style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2.2,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          //),
        ],
      //),),
      ),),),),
    );
  }
}

        //padding: EdgeInsets.zero,
        //child: Center(
        //child: ListView(children: <Widget>[
          //Expanded(
            //flex: 3,
            //child: 
            //Container(
              //decoration: BoxDecoration(
                  //image: DecorationImage(
                    //image: NetworkImage(
                      //"https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Flogo-splash.png?alt=media&token=4beb5375-ee69-4765-aa21-50d42b63b769",
                    //),
                    //fit: BoxFit.cover,
                  //),
                  //borderRadius: BorderRadius.only(
                      //bottomLeft: Radius.circular(35),
                      //bottomRight: Radius.circular(35))),
              //child: Row(
                //children: [

                //Row(
                  //children: <Widget>[
                    //Padding(
                      //padding: const EdgeInsets.only(top: 40),
                    //),
                    //Expanded(
                      //child: Text(
                        //"Esqueceu sua senha?",
                        //textAlign: TextAlign.right,
                        //style: Theme.of(context).textTheme.button,
                      //),
                    //),
                  //],
                //),

