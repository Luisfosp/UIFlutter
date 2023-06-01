import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>  _HomePageState();
}

class  _HomePageState extends State <HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
      return Scaffold(

        body: Stack(
          children: const [
            SizedBox(height: 50,),
            Fondo(),
            SingleChildScrollView(
              
              child: Contenido()
              )
            ],
          ),
        );
    }
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade300,
            Colors.blue.shade500,
            Colors.blue.shade900,
            Colors.blue.shade500,
            Colors.blue.shade300,
            Colors.blue.shade900,
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft
        ),
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100,),
          Image.asset(
            'assets/robot.png',
             height: 170, 
             width: 170,
        ),
        const SizedBox(height: 10,),
          const Text(
            'Welcome to TDG!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            textAlign: TextAlign.center,
            'A one-stop portal for you to learn the latest technologies from scratch',
            style: TextStyle(
              
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 10,),
          const Botones(),
        ],
      ),

    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        const SizedBox(height: 20,),
        Container(
          width: double.infinity,
          height: 50,
          /*decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),*/
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: 
                MaterialStateProperty.all<Color>(const Color(0xff142047)),
                ),
            child:const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
                ),
              ),
              
            ),
        ),
        
        const SizedBox(height:15, width: double.infinity,),
        
      ],
    );
  }
}
