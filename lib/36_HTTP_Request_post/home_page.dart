import 'package:flutter/material.dart';

class httpRequestPost extends StatefulWidget {
  const httpRequestPost({super.key});

  @override
  State<httpRequestPost> createState() => _httpRequestPostState();
}

class _httpRequestPostState extends State<httpRequestPost> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API DEMO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Hasil Kembalian"),
              ElevatedButton(
                onPressed: () {},
                child: Text("POST"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
