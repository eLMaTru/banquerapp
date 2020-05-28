import 'package:flutter/material.dart';
import 'package:la_banquera/src/com/hht/providers/results_provider.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final resultProvider = Provider.of<ResultsProvider>(context);

    return  Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            height: 84,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomCenter,
            child: Text(
              'La Banquera',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.directions_bike),
            title: Text("Jugar (Delivery)"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text("Resutados"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("Botes"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text("Jugadas"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text("Cartera"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Cuenta - if logged"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Nosotros"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text("Ingresar / Registrarse"),
            onTap: () {
              //code here
            },
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text("Salir - if logged"),
            onTap: () {
              //code here
            },
          ),
          SizedBox(
            height: 10,
          ),
          
        ],
      ),
    );
  }
}
