import 'package:flutter/material.dart';

class DABWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const DABWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}


// import 'package:flutter/material.dart';

// class FABWidget extends StatelessWidget {
//   final VoidCallback onPressed;
//   const FABWidget({Key? key, required this.onPressed}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: onPressed,
//       child: const Icon(Icons.add),
//     );
//   }
// }
