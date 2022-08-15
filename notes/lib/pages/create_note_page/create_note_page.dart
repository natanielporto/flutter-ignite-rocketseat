import 'package:flutter/material.dart';
import 'package:notes/pages/create_note_page/components/input_field_widget.dart';
import 'package:notes/pages/create_note_page/components/save_button_widget.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

AppBar navBar(isEdit, context) {
  return AppBar(
      title: Text(isEdit ? "Edit note" : "Create note"),
      centerTitle: true,
      actions: [
        if (isEdit)
          IconButton(
              onPressed: () {
                Navigator.pop(context, "");
              },
              icon: const Icon(Icons.delete)),
      ]);
}

class _CreateNotePageState extends State<CreateNotePage> {
  var noteContent = "";
  var textController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        noteContent = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = noteContent;
        setState(() {
          isEdit = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: navBar(isEdit, context),
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputFieldWidget(
                  textController: textController,
                  onChanged: (value) {
                    setState(() => noteContent = value);
                  }),
              const SizedBox(
                height: 32,
              ),
              if (noteContent.isNotEmpty)
                SaveButtonWidget(
                    onPressed: () => Navigator.pop(context, noteContent))
            ],
          ),
        ));
  }
}
