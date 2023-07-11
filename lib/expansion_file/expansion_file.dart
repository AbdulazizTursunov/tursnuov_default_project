import 'package:flutter/material.dart';


class ExpansionTileApp extends StatefulWidget {
  const ExpansionTileApp({Key? key}) : super(key: key);

  @override
  State<ExpansionTileApp> createState() => _ExpansionTileAppState();
}

class _ExpansionTileAppState extends State<ExpansionTileApp> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("exsaption tile"),),

      body: Column(
        children: [
          ExpansionTile(title: Text("expansion tile"),
            subtitle: Text("realniy imtihon "),
            // trailing: IconButton(onPressed: (){},icon: Icon(Icons.multiple_stop),),
            controlAffinity: ListTileControlAffinity.leading,
            children: [
              ElevatedButton(onPressed: (){}, child:Text(
                  "pressed "
              ),)
            ],

          ),

        ],
      ),
    );
  }


  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
