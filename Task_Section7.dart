import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const TaskFiveScreen(),
    );
  }
}

class TaskFiveScreen extends StatelessWidget {
  const TaskFiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      
      // 1. AppBar
      appBar: AppBar(
        title: const Text('Flutter UI Task'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      
      // 2. Body Layout
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              
              // 3. Image Widget (Profile)
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 20),

              // 4. Text Widget
              const Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
              const SizedBox(height: 10),

              // 5. Icon widget (Star)
              const Icon(Icons.star, color: Colors.amber, size: 45),
              const SizedBox(height: 30),

              // Card
              Card(
                elevation: 3,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // 6. TextFields (Email & Password) 
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // 7. Button (Submit)
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            print("Submit Pressed!");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )
                          ),
                          child: const Text('Submit', style: TextStyle(fontSize: 16)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // 8. FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB Pressed!");
        },
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}