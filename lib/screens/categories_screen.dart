import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            title: Text("Categories Form"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Write a Category", labelText: "Category"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Write a Description",
                        labelText: "Description"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
        ),
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.deepPurple.withOpacity(0.8),
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("Categories")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
