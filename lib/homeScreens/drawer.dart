import 'package:flutter/material.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: SafeArea(
        child: Column(children: [
         
          Row(
            children: [
              
              Expanded(
                child: Container(
                    height: 200,
                   
                    decoration: BoxDecoration(
                      //this color is gradient just for decoration
                      gradient: LinearGradient(
                      
    colors: [Color(0xFF000000), Color(0xFF161315), Color(0xFF241f23),
    Color(0xFF302c33), Color(0xFF3b3a45), Color(0xFF464955),Color(0xFF515965),
     Color(0xFF5d6974), Color(0xFF717d84),Color(0xFF889295),
    ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 70, 50, 50),
                      child: Text("Login Page", style: TextStyle(fontSize: 40, color: Colors.white)),
                    )),
              )
            ],
          ),
          GestureDetector(
            onTap: (){
              ///login screen
            },
            child: Card(
                child: ListTile(
                  leading:Icon(Icons.login),
                  title: Text("Login"),
                ),
                
              ),
          ),
        GestureDetector(
          onTap: (){
            //signup screen
          },
          child: Card(
                child: ListTile(
                  leading:Icon(Icons.app_registration_outlined),
                  title: Text("Signup"),
                ),
                
              ),
        )
        ]),
      ),
    );
  }
}