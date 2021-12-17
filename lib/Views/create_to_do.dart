import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Color(0xff20306c),
        title: Text('Create To Do'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: Text(
              'Title',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 75,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: Text(
              'Description',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 75,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 0),
                child: Text(
                  'Date',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 600,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 0),
                child: Text(
                  'Time',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 600,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => {
                //code here
              },
              child: Text('Created'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
