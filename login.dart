import 'package:flutter/material.dart';
void main()
{
  runApp(LoginApp(

  ));
}


class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      title:"LoginPage",
      home:LoginPage(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  final String username;
  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:AppBar(
        title:Text("Home Page", style:TextStyle(fontSize: 25, color:Colors.red, fontWeight:FontWeight.bold),
        ),
        
      ),
            body:Column(
        children: [
          SizedBox(height:25),

          Text("Welcome "+username, style:TextStyle(fontSize:18, color:Colors.black, fontWeight:FontWeight.bold)),
        ],)

        
    );
  }
}
class WebPage extends StatelessWidget {
  final String Email;
  WebPage(this.Email);
  
  @override
  Widget build(BuildContext context) {

      return Scaffold( 
      appBar:AppBar(
        title:Text("Home Page", style:TextStyle(fontSize: 25, color:Colors.red, fontWeight:FontWeight.bold),
        ),
        
      ),
            body:Column(
        children: [
          SizedBox(height:25),
          Text("Welcome "+Email, style:TextStyle(fontSize:18, color:Colors.black, fontWeight:FontWeight.bold)),
        ],)

        
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  late String Email;


  @override
  Widget build(BuildContext context) {
  TextStyle myStyle = TextStyle(fontSize: 25);
  final usernameField= TextField (style:TextStyle(fontSize:15, color:Colors.black),
   onChanged:(val) {
     setState(() {
      username=val;
      
    });

  },
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10),
    hintText: "username",
    border:OutlineInputBorder(
      borderRadius:BorderRadius.circular(32),
      ),
  ),
  );

    
  final passwordField = TextField (style:TextStyle(fontSize:15, color:Colors.blue),
  onChanged:(val) {
    setState(() {
      password=val;
      
    });
  },
  obscureText: true,
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10),
    hintText: "Password",
    border:OutlineInputBorder(
      borderRadius:BorderRadius.circular(32.0),
      ),
  ),
  );

       final nepalField= TextField (style:TextStyle(fontSize:15, color:Colors.black),
   onChanged:(val) {
     Email=val;

  },
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10), 
    hintText: "Enter Your Email",
    border:OutlineInputBorder(
      borderRadius:BorderRadius.circular(32),
      ),
  ),
  );


     final loginButton = Material(       
        elevation:5.0,
    borderRadius: BorderRadius.circular(30),
    color:Colors.blue,
    child:
    MaterialButton(
        minWidth:MediaQuery.of(context).size.width,
      padding:EdgeInsets.all(20),
      onPressed:()
       {
         if(username == "tilak" && password =="password123") {
          Navigator.push(context, MaterialPageRoute(builder:(contex)=> HomeScreen(username)));
         }
         else {
          print("Login is failed");
         }
       },
       child:Text("Login",style:TextStyle(color:Colors.white, fontSize:25)), 
      
    )

  );

  
     final forgot_passwordButton = Material(
    child:
    MaterialButton(
        minWidth:MediaQuery.of(context).size.width,
      padding:EdgeInsets.all(20),
      onPressed:()
       {
         if(username=="tilak") {
          Navigator.push(context, MaterialPageRoute(builder:(contex)=> WebPage(Email)));
         }
         else {
          print("Login is failed");
         }
       },
       child:Text("Forgot Password?",style:TextStyle(color:Colors.green, fontSize:25)), 
      
    )

  );
    return Scaffold(
     

      body:Center(
        child:Container(
        color:Colors.white,
          padding:EdgeInsets.all(20),
          child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children:[
              SizedBox(height:10),
               Icon(Icons.supervised_user_circle, size:200),
               SizedBox(height:50),
              usernameField,
               SizedBox(height:10),
               passwordField,
              SizedBox(height:10),
             loginButton,
             SizedBox(height:10),
             forgot_passwordButton,
              SizedBox(height:25),
                ElevatedButton(onPressed:() {

             },
             
             child: Text("Create new account",style:TextStyle(fontSize:25,color:Colors.blue)),

             ),
             
             
            ]
        ),
        ),
        ),
    );
  }
}


