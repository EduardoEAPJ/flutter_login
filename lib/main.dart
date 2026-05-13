import 'package:flutter/material.dart';
void main(){
  runApp(ShopApp());
}
class ShopApp extends StatelessWidget {
  const ShopApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(
          color: Colors.white,
        ),
          backgroundColor: Colors.cyanAccent,
            actions: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset("asset/image/logo.png"),
                  ],
                ),
              ),
            ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [          
                  Image.asset("asset/Image/logo.png", height: 200,),
                                        
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(43, 0, 187, 212),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15) ,
                        borderSide: BorderSide(
                          color: Colors.cyanAccent,
                        ),
                      ),                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15) ,
                        borderSide: BorderSide(
                          color: Colors.cyanAccent,
                        )                       
                      ),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: const Color.fromARGB(255, 1, 104, 104),
                    ),
                  ),
                       
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(43, 0, 187, 212),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15) ,
                        borderSide: BorderSide(
                          color: Colors.cyanAccent,
                        ),
                      ),                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15) ,
                        borderSide: BorderSide(
                          color: Colors.cyanAccent,
                        )                       
                      ),
                      labelText: "Senha",
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: const Color.fromARGB(255, 1, 104, 104),                 
                    ),
                  ),
              
                  Align( 
                    alignment: Alignment.centerRight,
                    child:   TextButton(
                    onPressed: (){}, 
                    child: Text("Esqueceu a senha?")
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      maximumSize: Size.fromHeight(50),
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Colors.cyanAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10)
                      )
                    ),
                    child: Text("Entrar",),
                    ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Não tem conta?"),
                      TextButton(
                        style: TextButton.styleFrom(foregroundColor: Colors.cyanAccent),
                        onPressed: (){},
                        child: Text("Cadastra-se",)
                      ),
                    ],
                  )
                    
                ],
              
              ),
            ),
          ),
        ),
        bottomNavigationBar:  BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          backgroundColor: Colors.cyanAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          iconSize: 30,
          items: [
            
            BottomNavigationBarItem(       
              icon: Icon(Icons.home),
              label: 'Login',
            ),
            BottomNavigationBarItem(       
              icon: ImageIcon(AssetImage("asset/image/logo.png")),
              label: 'Galo de Calça',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Cadastro',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Galeria',
            ),
          ],
        ),
      ),
    );
  }
  }