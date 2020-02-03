import 'package:flutter/material.dart';

import 'package:my_app/util/app.dart';
import 'package:my_app/theme/text_color.dart';
import 'package:my_app/theme/app_color.dart';
import 'package:my_app/theme/textfield_color.dart';
import 'package:my_app/theme/font_weight_e.dart';

import 'package:my_app/models/user_auth.dart';
import 'package:my_app/services/network_service.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<UserAuth> post;
  //Future<Post> post;

  // @override
  // void initState() {
  //   super.initState();
  //   post = fetchPost();
  // }

  final loginTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    App.disableDeviceRotation();
    
    return GestureDetector(
      onTap: () {
        // Hide keyboard
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: null,

        // Fix keyboard padding problem
        resizeToAvoidBottomInset: false,

        backgroundColor: AppColor.background,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 52.0),
                child: new Image.asset(
                  'assets/images/logo-big.png',
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),

              new Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 32.0),
                child: new Text(
                  'Вход в личный кабинет',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontWeight: FontWeightE.bold,
                    fontSize: 22.0,  
                    color: TextColor.black
                  ),
                ),
              ),

              new Container(
                margin: const EdgeInsets.only(left: 20, top: 24.0, right: 20),
                child: new Text(                
                  'Логин',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontWeight: FontWeightE.semiBold,
                    fontSize: 14.0,
                    color: TextColor.gray
                  ),
                ),
              ),

              new Container(
                margin: const EdgeInsets.only(left: 20, top: 8, right: 20),
                child: new TextField(
                  controller: loginTextEditingController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 16),
                    hintText: 'Введите логин',
                    hintStyle: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeightE.normal,
                      fontSize: 22.0,
                      color: TextColor.gray),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: TextFieldColor.border,
                      ),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(4.0),
                      ),
                    ),

                    //focusedBorder: ,
                    border: InputBorder.none,

                    filled: true,
                    fillColor: Colors.white,
                  ),
                )
              ),

              new Container(
                margin: const EdgeInsets.only(left: 20, top: 24.0, right: 20),
                child: new Text(     
                  'Пароль',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontWeight: FontWeightE.semiBold,
                    fontSize: 14.0,
                    color: TextColor.gray
                  ),
                ),
              ),
              
              new Container(
                margin: const EdgeInsets.only(left: 20, top: 8, right: 20),
                child: new TextField(
                  controller: passwordTextEditingController,      
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 16),
                    hintText: 'Введите пароль',
                    hintStyle: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeightE.normal,
                      fontSize: 22.0,
                      color: TextColor.gray
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: TextFieldColor.border,
                      ),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(4.0),
                      ),
                    ),

                    //focusedBorder: ,
                    border: InputBorder.none,

                    filled: true,
                    fillColor: Colors.white,
                  ),
                )
              ),

              new Container(
                margin: const EdgeInsets.only(left: 0, top: 25, right: 0),
                child: new Row(                
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // new Container(
                    //   margin: const EdgeInsets.only(left: 10, top: 0, right: 0),
                    //   alignment: Alignment.centerLeft,
                    //   // child: new CheckboxListTile(
                    //   //     value: true,
                    //   //     onChanged: null,
                    //   //     title: new Text('Запомнить меня'),
                    //   //     //controlAffinity: ListTileControlAffinity.leading,
                    //   //     //subtitle: new Text('Subtitle'),
                    //   //     //secondary: new Icon(Icons.archive),
                    //   //     activeColor: Colors.red,
                    //   // ),
                    //   child: new Checkbox(
                    //     value: false,
                    //     onChanged: (bool newValue) {
                    //       //do stuff
                    //     },
                    //   ),
                    // ),
                    // new Container(
                    //   //margin: const EdgeInsets.only(left: 0, top: 0, right: 0),
                    //   //alignment: Alignment.centerLeft,
                    //   child: new Text(
                    //     'Запомнить меня',
                    //     style: TextStyle(
                    //       fontFamily: 'ProximaNova',
                    //       fontWeight: FontWeightE.semiBold,
                    //       fontSize: 16.0,
                    //       color: TextColor.black
                    //     ),
                    //   ),
                    // ),

                    new Expanded(
                      child: new Container(
                        //margin: const EdgeInsets.only(left: 0, top: 0, right: 0),
                        alignment: Alignment.centerRight,
                        child: new FlatButton(
                          textColor: Colors.blue,
                          onPressed: () {
                            print('RemindPassword button pressed');
                          },
                          child: Text(
                            "Напомнить пароль?",
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeightE.semiBold,
                              fontSize: 16.0,
                              color: TextColor.blue
                            ),
                          ),
                        ),
                      ),
                    )

                  ]
                ),
              ),

              new Container(
                margin: const EdgeInsets.only(left: 20, top: 40, right: 20),
                width: App.size(context).width,
                height: 56,
                child: new FlatButton(      
                //child: new RaisedButton(
                  color: AppColor.blue,
                  textColor: TextColor.white,
                  onPressed: () {
                    _auth();
                  },

                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(4.0),
                    ),
                  ),

                  child: new Text(
                    'Войти',
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeightE.semiBold,
                      fontSize: 16.0,
                      color: TextColor.white
                    ),
                  ),
                ),
              ),

              new Container(
                margin: const EdgeInsets.only(left: 20, top: 16, right: 20),
                width: App.size(context).width,
                height: 56,
                child: new FlatButton(
                //child: new OutlineButton(
                //child: new RaisedButton(  
                  color: Colors.white,
                  textColor: TextColor.blue,

                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: TextFieldColor.border, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 1.0, //width of the border
                    ),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(4.0),
                    ),
                  ),
                  
                  onPressed: () {
                    print('notuser clicked');
                  },
                  child: new Text(
                    'Я не абонент',
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeightE.semiBold,
                      fontSize: 16.0,
                      color: TextColor.blue
                    ),
                  ),
                ),
              ),

            ],

          ),
        ),

      )
    );
  }

  void _auth() {
    print('auth');
    var login = loginTextEditingController.text;
    var password = passwordTextEditingController.text;
    
    print('login:$login password:$password');

    post = NetworkService.auth(login, password);
    
    _showDialog();
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          //title: new Text("Alert Dialog title"),
          content: _authResultContainer(),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Container _authResultContainer() {
    return new Container(
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: FutureBuilder<UserAuth>(
        future: post,
        builder: (context, snapshot) {
          var hasData = snapshot.hasData;
          var hasError = snapshot.hasError;

          print('snapshot:$snapshot');                    
          print('snapshot.hasData:$hasData');
          print('snapshot.hasError:$hasError');
          
          if (hasData) {
            var data = snapshot.data;
            var token = snapshot.data.token;
            var clientId = snapshot.data.clientId;

            print('snapshot.data:$data');
            print('snapshot.data.title:$token');
            print('snapshot.data.clientId:$clientId');
          }
          if (hasError) {
            var error = snapshot.error;

            print('snapshot.error:$error');
          }                  

          if (snapshot.hasData) {
            var clientId = snapshot.data.clientId;
            var token = snapshot.data.token;
            var result = "{\n\"client_id\": $clientId,\n\"token\": \"$token\"\n}";
            return Text(result);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }

}
