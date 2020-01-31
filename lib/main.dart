import 'package:flutter/material.dart';
import 'package:my_app/theme/text_color.dart';
import 'package:my_app/theme/app_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: null,
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),

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

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  fontWeight: FontWeight.bold,  
                  fontSize: 22.0,  
                  color: TextColor.black),
              ),
            ),

            new Container(
              margin: const EdgeInsets.only(left: 20, top: 24.0, right: 20),
              child: new Text(                
                'Логин',
                style: TextStyle(
                  fontFamily: 'ProximaNova-Semibold',
                  fontSize: 14.0,  
                  color: TextColor.gray),
              ),
            ),
            
            new Container(
              margin: const EdgeInsets.only(left: 20, top: 8, right: 20),
              child: new TextField(              
                decoration: InputDecoration(
                  hintText: 'Введите логин'
                ),
              )
            ),

            new Container(
              child: new Text(
                'Пароль'
              ),
            ),
            
            new Container(
              child: new TextField(
                decoration: InputDecoration(
                  hintText: 'Введите пароль'
                ),
              ),
            ),

            new CheckboxListTile(
                value: true,
                onChanged: null,
                title: new Text('Запомнить меня'),
                controlAffinity: ListTileControlAffinity.leading,
                //subtitle: new Text('Subtitle'),
                //secondary: new Icon(Icons.archive),
                activeColor: Colors.red,
            ),

            new Container(
              child: new FlatButton(
                textColor: Colors.blue,
                onPressed: () {
                  print('RemindPassword button pressed');
                },
                child: Text(
                  "Напомнить пароль?",
                ),
              ),
            ),

            new Container(
              child: new RaisedButton(
                color: Color(0xFF009BF3),
                textColor: Colors.white,
                onPressed: () {},
                child: const Text(
                  'Войти',
                  style: TextStyle(fontSize: 20)
                ),
              ),
            ),

            new Container(
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.blue,
                onPressed: () {},
                child: const Text(
                  'Я не абонент',
                  style: TextStyle(fontSize: 20)
                ),
              ),
            ),

          ],

        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
