// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _unfocusedColor = Colors.grey[600];
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameFocusNode.addListener(() {
      setState(() {});
    });

    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                //filled: true,
                labelText: "Username",
                labelStyle: TextStyle(
                  color: _usernameFocusNode.hasFocus
                      ? Theme.of(context).accentColor
                      : _unfocusedColor,
                ),
              ),
              focusNode: _usernameFocusNode,
            ),
            SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                //filled: true,
                labelText: "Password",
                labelStyle: TextStyle(
                  color: _passwordFocusNode.hasFocus
                      ? Theme.of(context).accentColor
                      : _unfocusedColor,
                ),
              ),
              focusNode: _passwordFocusNode,
              obscureText: true,
            ),
            // TODO: Add button bar (101)
            ButtonBar(
              children: [
                FlatButton(
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  child: Text("CANCEL"),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("NEXT"),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
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

// TODO: Add AccentColorOverride (103)
