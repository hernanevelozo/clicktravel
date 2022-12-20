//import 'package:flutter/cupertino.dart';
import 'package:clicktravel/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'personal_page.dart';
import 'contact_page.dart';
import 'credentials_page.dart';

import 'package:clicktravel/share/navBar.dart';
import 'package:clicktravel/login/presentation/pages/login_page.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _prefs = SharedPreferences.getInstance();
  
  void _refreshUserId() async {
    Future<bool> contains = _prefs.then((SharedPreferences prefs) {
      return prefs.containsKey('userId');
    });

    if (await contains) {
      await _prefs.then((SharedPreferences prefs) {prefs.setInt('userId', -1);});
    }
  }

  signOut() async {
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));

    //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login()), (Route<dynamic> route) => false);
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login()), ModalRoute.withName('/'));
  }
  //void _refreshUserId() async {
    ////Future<bool> contains = _prefs.then((SharedPreferences prefs) {
      ////return prefs.containsKey('userId');
    ////});

    ////if (! await contains) {
    //await _prefs.then((SharedPreferences prefs) {prefs.setInt('userId', -1);});
    ////}
  //}

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
                  Text("Configurações",
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

              //SizedBox(
                //width: double.infinity, // <-- match_parent,  
                //height: 45, // <-- match_parent,  
                  //child: TextButton(
                    //style: ElevatedButton.styleFrom(
                      //backgroundColor: Colors.white,
                    //),
                    //child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //children: <Widget>[
                      //Text('Informações Pessoais',
                        //style: TextStyle(color: Colors.black, fontSize: 18),
                        //),
                      //Icon(
                        //Icons.arrow_forward_ios,
                        //color: Colors.blue,
                      //),
                    //],),
                  //onPressed: () {
                    //Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => Personal()));
                  //},
                    //),
              //),

              //Divider(
                //height: 10,
                //thickness: 1,
              //),

              SizedBox(
                width: double.infinity, // <-- match_parent,  
                height: 45, // <-- match_parent,  
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text('Dados de Contato',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ],),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contact()));
                  },
                    ),
              ),

              Divider(
                height: 10,
                thickness: 1,
              ),

              SizedBox(
                width: double.infinity, // <-- match_parent,  
                height: 45, // <-- match_parent,  
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text('Credenciais',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ],),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Credentials()));
                  },
                    ),
              ),

              Divider(
                height: 10,
                thickness: 1,
              ),

              SizedBox(height: 20,),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    _refreshUserId();
                    signOut();
                    //Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => MyApp()));
                    //Navigator.popUntil(context, MyApp());
                  },
                  child: Text("Sair",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 2.2,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),

            ],
          )),
    );
  }

  //Padding buildNotificationOption(
      //String title, bool value, Function onChangeMethod) {
    //return Padding(
      //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      //child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //children: [
          //Text(title,
              //style: TextStyle(
                  //fontSize: 20,
                  //fontWeight: FontWeight.w500,
                  //color: Colors.grey[600])),
          //Transform.scale(
            //scale: 0.7,
            //child: CupertinoSwitch(
              //activeColor: Colors.blue,
              //trackColor: Colors.grey,
              //value: value,
              //onChanged: (bool newValue) {
                //onChangeMethod(newValue);
              //},
            //),
          //)
        //],
      //),
    //);
  //}

  //GestureDetector buildAccountOption(BuildContext context, String title) {
    //return GestureDetector(
      //onTap: () {
        //showDialog(
            //context: context,
            //builder: (BuildContext context) {
              //return AlertDialog(
                //shape: RoundedRectangleBorder(
                    //borderRadius:
                        //BorderRadius.circular(20.0)), //this right here
                //title: Text(title),
                //content: Column(
                  //mainAxisSize: MainAxisSize.min,
                  //children: [

                    //buildAlteracaoUsuario(context, title),

                    ////Text("Opção 1"),
                    ////Text("Opção 2"),
                  //],
                //),
                //actions: [
                  //TextButton(
                      //onPressed: () {
                        //Navigator.of(context).pop();
                      //},
                      //child: Text("Fechar"))
                //],
              //);
            //});
      //},
      //child: Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //children: [
            //Text(title,
                //style: TextStyle(
                  //fontSize: 20,
                  //fontWeight: FontWeight.w500,
                  //color: Colors.grey[600],
                //)),
            //Icon(
              //Icons.arrow_forward_ios,
              //color: Colors.blue,
            //)
          //],
        //),
      //),
    //);
  //}

  //Padding buildAlteracaoUsuario(BuildContext context, title) {
    //if (title == "Usuário")
      //return Padding(
          //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          ////child: ListView(children: <Widget>[
          //child: Column(children: [
            ////SizedBox(
            ////height: 20,
            ////),
            //Row(
              //children: [
                //Text("Nome",
                    //style:
                        //TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              //],
            //),
            //SizedBox(
              //height: 10,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ////borderSide: BorderSide.none
                //),
              //),
              //onChanged: (value) {
              //},
            //),

            //Row(
              //children: [
                //Text("Email",
                    //style:
                        //TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              //],
            //),
            //SizedBox(
              //height: 10,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                //),
              //),
              //onChanged: (value) {
              //},
            //),
          //]));

    //if (title == "Alterar Senha")
      //return Padding(
          //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          //child: Column(children: [
            //Row(
              //children: [
                //Text("Senha",
                    //style:
                        //TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              //],
            //),
            //SizedBox(
              //height: 10,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                //),
              //),
              //onChanged: (value) {
              //},
            //),
          //]));

    //if (title == "Conteúdo")
      //return Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: TextField(
          //style: TextStyle(color: Colors.lightBlue),
          //decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8.0),
              //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            //),
          //),
          //onChanged: (value) {
          //},
        //),
      //);

    //if (title == "Social")
      //return Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: TextField(
          //style: TextStyle(color: Colors.lightBlue),
          //decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8.0),
              //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            //),
          //),
          //onChanged: (value) {
          //},
        //),
      //);

    //if (title == "Privacidade e Segurança")
      //return Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: TextField(
          //style: TextStyle(color: Colors.lightBlue),
          //decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8.0),
              //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            //),
          //),
          //onChanged: (value) {
          //},
        //),
      //);
  //}
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
