import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('ECOM UI'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
            ),
            body: SingleChildScrollView(child: Home())));
  }
}


Widget bottomBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color(0xFF6200EE),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white.withOpacity(.60),
    selectedFontSize: 14,
    unselectedFontSize: 14,
    onTap: (value) {
      // Respond to item press.
    },
    items: [
      BottomNavigationBarItem(
        // ignore: deprecated_member_use
        title: Text('Favorites'),
        icon: Icon(Icons.favorite),
      ),
      BottomNavigationBarItem(
        // ignore: deprecated_member_use
        title: Text('Music'),
        icon: Icon(Icons.music_note),
      ),
      BottomNavigationBarItem(
        // ignore: deprecated_member_use
        title: Text('Places'),
        icon: Icon(Icons.location_on),
      ),
      BottomNavigationBarItem(
        // ignore: deprecated_member_use
        title: Text('News'),
        icon: Icon(Icons.library_books),
      ),
    ],
  );
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> list = [1, 2, 3, 4, 5,6];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Itmes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('More Items',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Container(
          height: 270,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2),
                ),
                margin: EdgeInsets.only(left: 15),
                width: 350,
                height: 250,
                child: Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('laptop.jpg'),
                        width: 350,
                        height: 210,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      'MackBook Pro',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('5.0 1000 Reviews')
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2)),
                margin: EdgeInsets.only(left: 15),
                width: 350,
                height: 100,
                child: Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('laptop.jpg'),
                        width: 350,
                        height: 210,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('MackBook Pro',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('5.0 1000 Reviews')
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2)),
                margin: EdgeInsets.only(left: 15),
                width: 350,
                height: 100,
                child: Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('laptop.jpg'),
                        width: 350,
                        height: 210,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('MackBook Pro',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('5.0 1000 Reviews')
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2)),
                margin: EdgeInsets.only(left: 15, right: 10),
                width: 350,
                height: 100,
                child: Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('laptop.jpg'),
                        width: 350,
                        height: 210,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('MackBook Pro',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('5.0 1000 Reviews')
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'More Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        Container(
          height: 60,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff000)),
                width: 200,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage('cloth.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Cloths',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff000)),
                width: 200,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage('light.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Electro',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff000)),
                width: 200,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage('cloth.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Cloths',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Popular Items"), Text('View More')],
        ),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: List.generate(list.length, (index) {
              return 
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff9c9272),
                  

                ),
                
                child: Center(child: Image(image: AssetImage('car_1.jpg'),)),
                
              );
            })),
            Container(
              child: bottomBar(),
            )
      ],
    );
  }
}
