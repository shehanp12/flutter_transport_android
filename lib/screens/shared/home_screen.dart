import 'package:flutter/material.dart';
import 'wrapper.dart';
import 'package:flash_chat/screens/user_screens/map_student.dart'; 

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue[50], Colors.lightBlueAccent]
            )
          ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           
             Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(0.0),
                child: Container(
                  
                  child:MaterialButton(
                  onPressed: (){
                     Navigator.of(context).pushNamed( Wrapper.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Driver ',
                    style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'times-new-roman',
                          color: Colors.black,
                        ),
                  ),
                )
                ),
              ),
              ),
            
             Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(0.0),
                
                child: MaterialButton(
                  onPressed: ()  {
                       Navigator.of(context).pushNamed(MyHomePage.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  
                  child: Text(
                    'Student',
                    style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'times-new-roman',
                          color: Colors.black,
                        ),
                  ),
                )
              ),
              
            ),
            
           Padding(padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
           child:Center(
             child:RichText(text:  new TextSpan(
                text: 'Develop by CodeBoys',
                style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'times-new-roman',
                        ),
                
              ),),),),
            
          ],
          

        ),
        
      ),
      
    );
  }
}