import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: Ninjacard()
)
);

class Ninjacard extends StatefulWidget {
  @override
  _NinjacardState createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0 ,40.0 ,30.0 ,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dhruv.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 100.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Dhruv Rana',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              'Current Learning Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '$count',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 20.0),
                Text(
                  'dhruvrana0000@gmai.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
