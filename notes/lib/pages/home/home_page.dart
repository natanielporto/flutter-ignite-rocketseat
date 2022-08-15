import 'package:flutter/material.dart';

import 'components/fab_widget.dart';
import 'components/note_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>['Nota exemplo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NOTES'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < notes.length; i++)
              NoteListPage(
                description: notes[i],
                onTap: () async {
                  final response = await Navigator.pushNamed(
                    context,
                    '/create-note',
                    arguments: notes[i],
                  );
                  if (response != null) {
                    var description = response as String;
                    if (response.isEmpty) {
                      notes.removeAt(i);
                    } else {
                      notes[i] = description;
                    }
                    setState(() {});
                  }
                },
              ),
          ],
        ),
      ),
      floatingActionButton: FABWidget(
        onPressed: () async {
          final description =
              await Navigator.pushNamed(context, '/create-note');
          if (description != null) {
            setState(() => notes.add(description as String));
          }
        },
      ),
    );
  }
}
