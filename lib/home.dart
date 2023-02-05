import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(237, 255, 255, 255),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Catat.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              icon: const Icon(Icons.more_vert),
              color: Colors.black,
              onPressed: () {})
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // search input
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Search notes',
                ),
              ),
            ),

            // heading
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                    children: const [
                      Icon(Icons.arrow_downward),
                      Text('Last modified'),
                    ],
                  )),
                  const Icon(Icons.grid_view),
                ],
              ),
            ),

            // card weekly schedule
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Weekly Schedule',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Text('Weekly meeting with the boys'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Weekly meeting with the boys'),
                          Text('Yesterday 9:20 PMssssssssssssss'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            // grid
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
