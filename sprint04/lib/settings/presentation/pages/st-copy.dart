import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:clicktravel/share/navBar.dart';
import 'package:clicktravel/login/presentation/pages/login_page.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  bool valNotify4 = false;

  //final prefs

  onChangedFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangedFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangedFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  onChangedFunction4(bool newValue4) {
    setState(() {
      valNotify4 = newValue4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 2),
      //backgroundColor: Color(0xf9f9f9ff),
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Conta",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              buildAccountOption(context, "Usuário"),
              buildAccountOption(context, "Alterar Senha"),
              buildAccountOption(context, "Conteúdo"),
              buildAccountOption(context, "Social"),
              //buildAccountOption(context, "Idioma"),
              buildAccountOption(context, "Privacidade e Segurança"),
              SizedBox(height: 20),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text("Sair",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 2.2,
                        color: Colors.red,
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Icon(
                    Icons.volume_up_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Notificações",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(height: 20, thickness: 1),
              SizedBox(
                height: 10,
              ),
              buildNotificationOption(
                  "Ofertas", valNotify1, onChangedFunction1),
              buildNotificationOption(
                  "Novidades", valNotify2, onChangedFunction2),
              buildNotificationOption(
                  "Recomendações", valNotify3, onChangedFunction3),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Icon(
                    Icons.more,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Opções",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(height: 20, thickness: 1),
              SizedBox(
                height: 10,
              ),
              buildNotificationOption(
                  "Modo Escuro", valNotify4, onChangedFunction4),
            ],
          )),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600])),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0)), //this right here
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //if(title == "Usuário") buildAlteracaoUsuario(context),
                    //if(title == "Alterar Senha") buildAlteracaoUsuario(context),
                    //if(title == "Conteúdo") buildAlteracaoUsuario(context),
                    //if(title == "Social") buildAlteracaoUsuario(context),
                    //if(title == "Privacidade e Segurança") buildAlteracaoUsuario(context),

                    buildAlteracaoUsuario(context, title),

                    //Text("Opção 1"),
                    //Text("Opção 2"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Fechar"))
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }

  Padding buildAlteracaoUsuario(BuildContext context, title) {
    if (title == "Usuário")
      return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          //child: ListView(children: <Widget>[
          child: Column(children: [
            //SizedBox(
            //height: 20,
            //),
            Row(
              children: [
                Text("Nome",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.lightBlue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  //borderSide: BorderSide.none
                ),
                //hintText: "Ex: Diamantina",
                //prefixIcon: Icon(Icons.search),
                //prefixIconColor: Colors.lightBlue,
              ),
              onChanged: (value) {
                //keyword = value;
                //setState(() {
                //_myState = 1;
                //});
              },
            ),

            Row(
              children: [
                Text("Email",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.lightBlue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  //borderSide: BorderSide.none
                ),
                //hintText: "Ex: Diamantina",
                //prefixIcon: Icon(Icons.search),
                //prefixIconColor: Colors.lightBlue,
              ),
              onChanged: (value) {
                //keyword = value;
                //setState(() {
                //_myState = 1;
                //});
              },
            ),
          ]));

    if (title == "Alterar Senha")
      return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          //child: ListView(children: <Widget>[
          child: Column(children: [
            //SizedBox(
            //height: 20,
            //),
            Row(
              children: [
                Text("Senha",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.lightBlue),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  //borderSide: BorderSide.none
                ),
                //hintText: "Ex: Diamantina",
                //prefixIcon: Icon(Icons.search),
                //prefixIconColor: Colors.lightBlue,
              ),
              onChanged: (value) {
                //keyword = value;
                //setState(() {
                //_myState = 1;
                //});
              },
            ),

          ]));

    if (title == "Conteúdo")
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: TextField(
          style: TextStyle(color: Colors.lightBlue),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              //borderSide: BorderSide.none
            ),
            //hintText: "Ex: Diamantina",
            //prefixIcon: Icon(Icons.search),
            //prefixIconColor: Colors.lightBlue,
          ),
          onChanged: (value) {
            //keyword = value;
            //setState(() {
            //_myState = 1;
            //});
          },
        ),
      );

    if (title == "Social")
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: TextField(
          style: TextStyle(color: Colors.lightBlue),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              //borderSide: BorderSide.none
            ),
            //hintText: "Ex: Diamantina",
            //prefixIcon: Icon(Icons.search),
            //prefixIconColor: Colors.lightBlue,
          ),
          onChanged: (value) {
            //keyword = value;
            //setState(() {
            //_myState = 1;
            //});
          },
        ),
      );

    if (title == "Privacidade e Segurança")
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: TextField(
          style: TextStyle(color: Colors.lightBlue),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              //borderSide: BorderSide.none
            ),
            //hintText: "Ex: Diamantina",
            //prefixIcon: Icon(Icons.search),
            //prefixIconColor: Colors.lightBlue,
          ),
          onChanged: (value) {
            //keyword = value;
            //setState(() {
            //_myState = 1;
            //});
          },
        ),
      );
  }
}

//child: Drawer(
//child: SafeArea(
//child:Column(
//children: [
//ExpansionTile(
//title: Text("Usuário"),
//leading: Icon(Icons.person), //add icon
//childrenPadding: EdgeInsets.only(left:60), //children padding
//children: [
//ListTile(
//title: Text("Cadastro"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Alterar Senha"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Conteúdo"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Social"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Idioma"),
//onTap: (){
////action on press
//},
//),

////more child menu
//],
//),

//ExpansionTile(
//title: Text("Parent Category 2"),
//leading: Icon(Icons.person), //add icon
//childrenPadding: EdgeInsets.only(left:60), //children padding
//children: [
//ListTile(
//title: Text("Child Category 1"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Child Category 2"),
//onTap: (){
////action on press
//},
//),

////more child menu
//],
//)
//],
//)
//),
//)
