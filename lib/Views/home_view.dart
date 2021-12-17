import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'create_to_do.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20306c),
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Color(0xff20306c),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1627179524166-16ebab4c5302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8cm5TS0RId3dZVWt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
        title: Text('My Tasks'),
        actions: [
          Icon(Icons.filter_list_rounded),
          Icon(Icons.search),
          SizedBox(width: 10)
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                color: Colors.blue[50],
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: Color(0xff20306c),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Plan a trip to Finland',
                                style: TextStyle(
                                    fontSize: (15),
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff44527E))),
                            Text('Plan a trip to Finland',
                                style: TextStyle(fontSize: (9))),
                          ],
                        ),
                      ),
                      Icon(Icons.notifications, color: Colors.pink),
                      Text('Yesterday')
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
            itemCount: 7),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: InkWell(
          onTap: () {
            showBarModalBottomSheet(
              context: context,
              builder: (context) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.blue[50],
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Icon(Icons.check_circle_outline),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Plan a trip to Finland',
                                        style: TextStyle(
                                            fontSize: (15),
                                            color: Color(0xff44527E))),
                                    Text('Plan a trip to Finland',
                                        style: TextStyle(fontSize: (9))),
                                  ],
                                ),
                              ),
                              Icon(Icons.notifications, color: Colors.pink),
                              Text('Yesterday')
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20);
                    },
                    itemCount: 3);
              },
            );
          },
          child: Card(
            color: Colors.blue[50],
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.blue),
                  SizedBox(width: 15),
                  Expanded(child: Text('Completed')),
                  Text('24')
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CreateTodoView();
              },
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff20306c),
      ),
    );
  }
}
