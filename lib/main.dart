import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Flutter',
      home: Inicio(),

    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 5, 66),
        title: const Text('Login Flutter', style: TextStyle(color: Colors.white),),
      ),
      body: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://th.bing.com/th/id/R.da6f26a68e1cd32ca945c2bed43e4383?rik=a09WX97Vw1RKAg&pid=ImgRaw&r=0'),
        fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Etiqueta(),
          CampoUser(),
          CampoPass(),
          BotonEntrar()
        ],
      ),
    );
  }
}
Widget Etiqueta(){
  return  Container(
    child: const Center(
      child: Text("Sign in", style: TextStyle(fontSize: 30.0, color: const Color.fromARGB(255, 255, 255, 255)),),
    ),
  );
}
Widget CampoUser(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}
Widget CampoPass(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget BotonEntrar(){
  return ElevatedButton(
    onPressed: (){}, 
  child:
    const Text("Intro Now", 
    style: TextStyle(
      fontSize: 25.0, 
      color:  Color.fromARGB(255, 190, 94, 207)
      ),
    ), 
  );
}