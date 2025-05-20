import 'package:flutter/material.dart';
class InfoTextPage extends StatelessWidget {
  final String title;
  InfoTextPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.brown,
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Ensures it's at the bottom-right
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          maxLines: null,
          expands: true,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: "Write your notes or information about $title...",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
} 
