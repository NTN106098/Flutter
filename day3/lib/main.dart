import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: NinjaCard()
)); 


class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0 ;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 199, 143),
      appBar: AppBar(
        title: const Text('MY PHONE`s NTN '),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 230, 200),
        // elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel +=1 ;
          });
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              const Center(
                child:  CircleAvatar(
                  backgroundImage: AssetImage('assets/anh2.jpg'),
                  radius: 40.0,
                ),
              ),
              const Divider(
                height: 80.0,
                color: Color.fromARGB(255, 29, 87, 31),
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 2.0
                ),
              ),
               const SizedBox(height: 10.0,),
              const Text(
                'Nghĩa-Nguyễn',
                style: TextStyle(
                  color:  Colors.red,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 30.0,),
              const Text(
                'CURENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 2.0
                ),
              ),
              const SizedBox(height: 10.0),
               Text(
                '$ninjaLevel',
                style: const TextStyle(
                  color:  Colors.red,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              // SizedBox(height: 30.0),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    'ntn.nghĩa.vn',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      letterSpacing: 1.0
                    ),
                  )
                ],
              ),
              // Row(children: <Widget>[],),
            ],
        ),
      ),
    );
  }
}


class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

