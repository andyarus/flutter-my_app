import 'package:flutter/material.dart';

import 'package:my_app/util/app.dart';
import 'package:my_app/theme/text_color.dart';
import 'package:my_app/theme/app_color.dart';
import 'package:my_app/theme/textfield_color.dart';
import 'package:my_app/theme/font_weight_e.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    App.disableDeviceRotation();

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    
    // return Scaffold(
    
    return GestureDetector(
      onTap: () {
        // Hide keyboard
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: null,
        // appBar: AppBar(
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text(widget.title),
        // ),

        // Fix keyboard padding problem
        resizeToAvoidBottomInset: false,

        backgroundColor: AppColor.background,

        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).

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
              


            // new TextField(
            //   textAlign: TextAlign.left,
            //   decoration: new InputDecoration(hintText: "Enter Something", contentPadding: const EdgeInsets.all(20.0)
            // )

              new Container(
                margin: const EdgeInsets.only(left: 20, top: 8, right: 20),
                child: new TextField(
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
                    print('signin clicked');
                  },
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
}
