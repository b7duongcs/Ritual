import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.account_circle, size: 100.0)],
          ),
          Text('Name'),
          Card(
              child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Profile'),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ))),
          SwitchListTile(
              title: const Text('Dark Mode'), value: false, onChanged: null),
        ],
      ),
    );
  }
}
