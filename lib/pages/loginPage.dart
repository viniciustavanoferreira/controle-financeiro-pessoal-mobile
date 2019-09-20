import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CFP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Controle Financeiro Pessoal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

void validateAndSubmit() async {
    print('#CFPLOG: Button was pressed.');
  }

  @override
  Widget build(BuildContext context) {

    final userField = TextFormField(
      key: new Key('email'),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
        hintText: "email",
        hintStyle: TextStyle(
          color: Color(0x50C0CCDA),
        ),
        prefixIcon: Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: Icon(
              Icons.person_outline,
              color: Color(0xFFC0CCDA),
            )),
      ),
      validator: (val) => val.isEmpty ? 'Email não pode ser vazio.' : null
      // onSaved: (val) => _email = val,
    );

    final passField = TextFormField(  
      key: new Key('password'),
      obscureText: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
        hintText: "senha",
        hintStyle: TextStyle(
          color: Color(0x50C0CCDA),
        ),
        prefixIcon: Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: Icon(
              Icons.lock_outline,
              color: Color(0xFFC0CCDA),
            )),
      ),
      validator: (val) => val.isEmpty ? 'Senha não pode ser vazia.' : null
      // onSaved: (val) => _password = val,
    );

  final loginButton = Material(
      child: InkWell(
        onTap: validateAndSubmit,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black26,
                offset: new Offset(3.0, 3.0),
                blurRadius: 10.0,
              ),
              new BoxShadow(
                color: Colors.black26,
                offset: new Offset(-3.0, 3.0),
                blurRadius: 10.0,
              ),
            ],
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.blue,
            //gradient: LinearGradient(
            //  begin: Alignment.topLeft,
            //  end: Alignment.bottomRight,
            // colors: [Color(0xFFfc00ff), Color(0xFF00dbde)],
            //),
          ),
          child: Center(
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            userField,
            SizedBox(height: 8.0),
            passField,
            SizedBox(height: 20.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}