import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Contenido(),
        ],
      ),
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Sign in to TGD and \ncontinue',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            textAlign: TextAlign.center,
            'Enter your email and password below to continue to The Growing Developer and let the learning begin! ',
            style: TextStyle(
              
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(height: 10,),
          Datos(),
        ],
      ),

    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:  Colors.white 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
              border: const OutlineInputBorder(),
              prefixIcon: IconButton(
                color: Colors.blue.shade900,
                icon: const Icon(Icons.account_circle),
                onPressed: () {
                  setState(() {
                    
                  });
                },
                ),
              hintText: 'Username',
            ),
          ),
          const SizedBox(height: 20,),
          
          
          TextFormField(
            
            obscureText: obs,
            decoration:  InputDecoration(
              border: const OutlineInputBorder(
                
              ),
              prefixIcon: IconButton(
                color: Colors.blue.shade900,
                icon: const Icon(Icons.lock),
                onPressed: () {
                  setState(() {
                    
                  });
                },
                ),
                hintText: 'Password',
            ),
          ),
          
          const SizedBox(height: 5,),
          const Botones(),
          const SizedBox(height: 50,),
          const Text(
            'The Growing Developer',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 13, 71, 161),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
      ),
    );
  }
}


// ***
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
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
                ),
              ),
              
            ),
        ),
        const SizedBox(height:25, width: double.infinity,),
        
         SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {} ,
            child: const Text(

              'Sign-in using Google',
              style: TextStyle(
                color: Color(0xff142047),
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              )
            ),
          ),
        const SizedBox(height:15, width: double.infinity,),
        
      ],
    );
  }
}
