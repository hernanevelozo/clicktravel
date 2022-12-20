import 'package:clicktravel/login/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

import 'package:clicktravel/home/presentation/pages/home_page-.dart';
import 'package:clicktravel/login/database/login_operations.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:clicktravel/login/models/user_element.dart';
//import './login_page.dart';
//import 'package:clicktravel/share/navBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _prefs = SharedPreferences.getInstance();
  
  void _login(String userEmail) async {
    Future<bool> contains = _prefs.then((SharedPreferences prefs) {
      return prefs.containsKey('userId');
    });
  
    if (await contains) {
      int userId = await LoginOperations().getUserId(userEmail);
      await _prefs.then((SharedPreferences prefs) {prefs.setInt('userId', userId);});
    }
  }

  LoginOperations loginOperations = LoginOperations();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  var valid = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //bottomNavigationBar: BottomNavBar(index: 3),
      body: 
      SingleChildScrollView(
               child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width,
                        minHeight: MediaQuery.of(context).size.height,
                      ),
                child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

      //Padding(
        //padding: const EdgeInsets.symmetric(),
        //child: Column(
          Padding(
            padding: const EdgeInsets.symmetric(),
            //height: 200,
            //flex: 3,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Flogo-splash.png?alt=media&token=06b037ff-305a-4df2-9a5a-678e462b5fac",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
            ),
          ),
          //Expanded(
            //flex: 4,
            //child: Padding(
          Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 20.0,
              ),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Entrar",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.alternate_email,
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Usuário",
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
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                      ),
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
                          //FutureBuilder<bool>(
                            //future: loginOperations.validateUser(user_info),
                            //builder: (context, snapshot) {
                              //if (snapshot.data) {
                                //return true;
                              //}
                              //else {
                                //return false);
                              //}
                            //}
                          //);

                          void validateUser() async {
                            //return true;
                            if (await loginOperations.validateUser({'email': '${email.text}', 'password': '${password.text}'})) {
                              _login(email.text);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                              setState(() {
                                valid = 2;
                              });
                            }
                            //else {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            //}
                          }

                          validateUser();

                          setState(() {
                            valid = 1;
                          });

                        },
                        child: Text("Acessar", style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2.2,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      if (valid == 0)
                        Text(""),
                        //Text("Login concluído!", textAlign: TextAlign.center,),
                      if (valid == 1)
                        Text("Dados inválidos!", textAlign: TextAlign.center, style: TextStyle(color: Colors.red),),

                      if (valid == 2)
                        Text("Login concluído!", textAlign: TextAlign.center, style: TextStyle(color: Colors.green),),
                    ],
                  ),),
                ),

                Column(children: <Widget>[
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Não possui uma conta? "),
                      //Text(
                        //"Criar conta",
                        //style: Theme.of(context).textTheme.button,
                      //),
                      Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                        },
                        child: Text('Criar Conta', style: TextStyle(color: Colors.lightBlue)),
                      ),
                    ),
                    ],
                  ),
                ])
              ]),
            ),
          //),
        ],
      ),),
    ),),);
  }
}


                          //return Container(child: Row(children: [Text("Dado Inválidos!")],));

                          
                         
                          //if (validateUser())
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => 
                                //FutureBuilder<bool>(
                                  //future: loginOperations.validateUser({'email': '${email.text}', 'password': '${password.text}'}),
                                  //builder: (context, snapshot) {
                                    //if (snapshot.data) {
                                      ////return Navigator.push(context, MaterialPageRoute(builder: (context) => Home();
                                      //return Home();
                                    //}
                                    //else {
                                      ////return Container(child: Row(children: [Text("Dados inválidos")],));
                                      //return Login();
                                    //}
                                  //}
                                //);
                              //));

                                //FutureBuilder<bool>(
                                  //future: loginOperations.validateUser({'email': '${email.text}', 'password': '${password.text}'}),
                                  //builder: (context, snapshot) {
                                    //if (snapshot.data) {
                                      ////return Navigator.push(context, MaterialPageRoute(builder: (context) => Home();
                                      //return Home();
                                    //}
                                    //else {
                                      //return Container(child: Row(children: [Text("Dados inválidos")],));
                                    //}
                                  //}
                                //);

                          //));
