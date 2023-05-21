import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'All widget',
    home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('All Widget Practice')),
      ),
      body: MyApp(),
    ),
  ));
}

//container----------------------------------

/*class ConTainer extends StatelessWidget {
  const ConTainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      margin: const EdgeInsets.all(50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            // Set the offset of the shadow (x, y)
            offset: const Offset(0, 2),
            // Set the blur radius of the shadow
            blurRadius: 10,
            // Set the spread radius of the shadow
            spreadRadius: 10,
          )
        ],
        color: Colors.blue,
        // border: Border.all(
        //   width: 2,
        //   color: Colors.black,
        // )
      ),
      child: const Text('Container'),
    );
  }
} */

//List view & List Tile

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('List 1'),
          trailing: Icon(Icons.arrow_forward),
          leading: Container(
            height: 5,
            width: 10,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.rectangle),
          ),
        )
      ],
    );
  }
}*/

//Image widget
/*class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 500,
      width: 500,
      child: Image(
        image: AssetImage('images/photo.jpg'),
        height: 100,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}*/

//GridView Widget

/*class AddGrid extends StatefulWidget {
  const AddGrid({super.key});

  @override
  State<AddGrid> createState() => _AddGridState();
}

class _AddGridState extends State<AddGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      // mainAxisSpacing: 100,
      // crossAxisSpacing: 100,
      children: [
        Container(
          height: 500,
          color: Colors.blue,
          child: Image(
            image: AssetImage('images/photo.jpg'),
            fit: BoxFit.fill,
            height: 500,
          ),
        ),
        Image.asset('images/photo.jpg'),
        Image.asset('images/photo.jpg'),
        Image.asset('images/photo.jpg'),
        Image.asset('images/photo.jpg')
      ],
    );
  }
}*/

//Stack Widget

/*class AddStack extends StatefulWidget {
  const AddStack({super.key});

  @override
  State<AddStack> createState() => _AddStackState();
}

class _AddStackState extends State<AddStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Image.asset('images/photo.jpg'), const Text('Photo of Human')],
    );
  }
}*/

//Add Card

/*class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        child: Card(
          color: const Color.fromARGB(255, 223, 214, 217),
          child: Column(
            children: [
              Image.asset('images/photo.jpg'),
              const Text(
                'Photo',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              /*TextButton(
                  onPressed: () {
                    print('Clicked');
                  },
                  child: Container(
                    child: const Text(
                      'Click me',
                      style: TextStyle(color: Colors.redAccent, fontSize: 15),
                    ),
                    color: const Color.fromARGB(255, 255, 253, 253),
                  ))*/
              /*FloatingActionButton(
                hoverColor: Colors.black,
                backgroundColor: Colors.yellow,
                onPressed: () {
                  print('Clicked');
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 30),
                ),
              )*/

              ElevatedButton(
                onPressed: () {}, child: Text('Click Me'))
            ],
          ),
        ),
      ),
    );
  }
}*/

//Stateful Widget

/*class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onSubmitted: (value) {
            setState(() {
              name = value;
            });
          },
        ),
        Text(name)
      ],
    );
  }
}*/

//Make Form

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formkey = GlobalKey<FormState>();

  var name = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Name : ',
                  labelStyle: TextStyle(color: Colors.blue)),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Your Name";
                }
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Email / Phone No : ',
                  labelStyle: TextStyle(color: Colors.blue)),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password : ',
                  labelStyle: TextStyle(color: Colors.blue)),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    view();
                  }
                },
                child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}

class view extends StatelessWidget {
  const view({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
    );
  }
}
