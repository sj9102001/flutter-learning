import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _formKey = GlobalKey<FormState>();

  String enteredTitle = '';

  void saveForm() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new place'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //form............
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Title'),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'Please enter a title';
                          }
                        },
                        // controller: _titleController
                        onSaved: (value) {
                          enteredTitle = value.toString();
                          print('entered title $enteredTitle');
                          return null;
                        },
                      ),
                    ),
                    //form............
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            onPressed: saveForm,
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.add),
            label: Text('Add place'),
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          )
        ],
      ),
    );
  }
}
