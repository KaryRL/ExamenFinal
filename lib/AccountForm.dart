import 'package:araara/holi.dart';
import 'package:flutter/material.dart';

import 'Uno.dart';

class AccountForm extends StatefulWidget {
  @override
  _AccountFormState createState() => new _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  final _formKey = GlobalKey<FormState>();
  String _name="";

  TextEditingController _text = TextEditingController(text: (''));

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              onSaved: (val)  => setState(()=> _name = val!),
              controller: _text,
              validator: (value) {
                if (value!.isEmpty) {
                  return "You can't have an empty name.";

                }

                if (value.length < 2) {
                  return "Name must be more than one character.";
                }
              },
              decoration: InputDecoration(
                  hintText: 'Nombre',
                  helperText: 'Es super importante lo juro'),
            ),
            RaisedButton(
              onPressed: ()
              {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>holi(_text.text)));
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Yep')));


                } else {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Nope')));
                }
              },
              child: Text('Go'),
            ),
            Text(_text.text),
            ],
        )
    );
  }
}