import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YA ALLAH',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyLoginPage(),
    );
  }
}
























// import 'package:flutter/material.dart';
// import 'fadeTransition .dart';
// import 'scaleTransition.dart';
// import 'slideTransition.dart';

// void main() {
//   runApp(
//     const MyApp(),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'YA ALLAH',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const MyScaleTransition(title: 'CASIAN DEVELOPER\'S'),
//     );
//   }
// }



























// // import 'package:flutter/material.dart';


// // class MySliverAppBar extends StatefulWidget {
// //   final String title;
// //   const MySliverAppBar({required this.title, super.key});

// //   @override
// //   State<MySliverAppBar> createState() => _MySliverAppBarState();
// // }

// // class _MySliverAppBarState extends State<MySliverAppBar> {
// //   int _counter = 0;
// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }

// //   void _decrementCounter() {
// //     setState(() {
// //       _counter--;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           widget.title,
// //           style: const TextStyle(
// //             color: Colors.black,
// //             fontSize: 24,
// //             fontStyle: FontStyle.italic,
// //           ),
// //         ),
// //         centerTitle: true,
// //         actions: [
// //           IconButton(
// //             onPressed: () {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 const SnackBar(
// //                   content: Text(
// //                     'FLUTTER DEVELOPER.................',
// //                   ),
// //                 ),
// //               );
// //             },
// //             icon: const Icon(
// //               Icons.person,
// //               size: 32,
// //             ),
// //           ),
// //           IconButton(
// //             onPressed: () {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 const SnackBar(
// //                   content: Text(
// //                     'SEARCHING.................',
// //                   ),
// //                 ),
// //               );
// //             },
// //             icon: const Icon(
// //               Icons.search,
// //               size: 32,
// //             ),
// //           ),
// //         ],
// //       ),
// //       body: (),
// //       drawer: myDrawer(),
// //       floatingActionButton: myFloatingActionButton(),
// //       bottomNavigationBar: myBottomNavigationBar(),
// //     );
// //   }

 

// //   Widget myDrawer() {
// //     return Drawer(
// //       child: Column(
// //         children: [
// //           Container(
// //             color: Colors.black,
// //             child: const DrawerHeader(
// //               child: Center(
// //                 child: Text(
// //                   'Drawer Header',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 24,
// //                     fontStyle: FontStyle.italic,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           const Padding(
// //             padding: EdgeInsets.only(top: 30),
// //             child: ListTile(
// //               leading: Icon(
// //                 Icons.person,
// //                 size: 32,
// //               ),
// //               title: Text(
// //                 'Imran Nazeer',
// //                 style: TextStyle(
// //                   color: Colors.black,
// //                   fontSize: 24,
// //                   fontStyle: FontStyle.italic,
// //                 ),
// //               ),
// //               trailing: Icon(
// //                 Icons.account_balance_outlined,
// //                 size: 32,
// //               ),
// //             ),
// //           ),
// //           const Padding(
// //             padding: EdgeInsets.only(top: 30),
// //             child: ListTile(
// //               leading: Icon(
// //                 Icons.person,
// //                 size: 32,
// //               ),
// //               title: Text(
// //                 'M.Sufyan',
// //                 style: TextStyle(
// //                   color: Colors.black,
// //                   fontSize: 24,
// //                   fontStyle: FontStyle.italic,
// //                 ),
// //               ),
// //               trailing: Icon(
// //                 Icons.chat,
// //                 size: 32,
// //               ),
// //             ),
// //           ),
// //           const Padding(
// //             padding: EdgeInsets.only(top: 30),
// //             child: ListTile(
// //               leading: Icon(
// //                 Icons.person,
// //                 size: 32,
// //               ),
// //               title: Text(
// //                 'M.Hamza',
// //                 style: TextStyle(
// //                   color: Colors.black,
// //                   fontSize: 24,
// //                   fontStyle: FontStyle.italic,
// //                 ),
// //               ),
// //               trailing: Icon(
// //                 Icons.delete,
// //                 size: 32,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget myFloatingActionButton() {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.end,
// //       children: [
// //         FloatingActionButton(
// //           onPressed: _incrementCounter,
// //           tooltip: 'Increment',
// //           child: const Icon(
// //             Icons.add,
// //             size: 32,
// //           ),
// //         ),
// //         FloatingActionButton(
// //           onPressed: _decrementCounter,
// //           tooltip: 'Decrement',
// //           child: const Icon(
// //             Icons.remove,
// //             size: 32,
// //           ),
// //         ),
// //       ],
// //     );
// //   }

//   // Widget myBottomNavigationBar() {
//   //   return SizedBox(
//   //     height: 70,
//   //     child: BottomNavigationBar(
//   //       items: const [
//   //         BottomNavigationBarItem(
//   //           backgroundColor: Colors.black,
//   //           icon: Icon(
//   //             Icons.camera,
//   //             size: 32,
//   //           ),
//   //           label: 'Camera',
//   //         ),
//   //         BottomNavigationBarItem(
//   //           backgroundColor: Colors.black,
//   //           icon: Icon(
//   //             Icons.chat,
//   //             size: 32,
//   //           ),
//   //           label: 'Chats',
//   //         ),
//   //         BottomNavigationBarItem(
//   //           backgroundColor: Colors.black,
//   //           icon: Icon(
//   //             Icons.group,
//   //             size: 32,
//   //           ),
//   //           label: 'Groups',
//   //         ),
//   //         BottomNavigationBarItem(
//   //           backgroundColor: Colors.black,
//   //           icon: Icon(
//   //             Icons.stacked_bar_chart,
//   //             size: 32,
//   //           ),
//   //           label: 'Status',
//   //         ),
//   //         BottomNavigationBarItem(
//   //           backgroundColor: Colors.black,
//   //           icon: Icon(
//   //             Icons.call,
//   //             size: 32,
//   //           ),
//   //           label: 'Calls',
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

 
// // }
