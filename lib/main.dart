// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Validation Demo';
//     return MaterialApp(
//         title: appTitle,
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text(appTitle),
//           ),
//           body: const MyCostumeForm(),
//         ));
//   }
// }

// class MyCostumeForm extends StatefulWidget {
//   const MyCostumeForm({super.key});
//   @override
//   State<MyCostumeForm> createState() => _MyCostumeFormState();
// }

// class _MyCostumeFormState extends State<MyCostumeForm> {
//   final _fromKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _fromKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TextFormField(
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           Container(
//               padding: EdgeInsets.symmetric(vertical: 16.0),
//               child: ElevatedButton(
//                   onPressed: () {
//                     if (_fromKey.currentState!.validate()) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('Processing Data')),
//                       );
//                     }
//                   },
//                   child: Text('Submit')))
//         ],
//       ),
//     );
//   }
// }

// Membuat INK WELL ===========================================================

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("InkWell"),
        ),
        body: Center(
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
            ),
            child: InkWell(
              borderRadius: new BorderRadius.circular(24),
              onTap: () => setState(() {}),
              child: Container(
                width: 100.0,
                height: 100.0,
                alignment: Alignment.center,
                child: Text(
                  'InkWell',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
