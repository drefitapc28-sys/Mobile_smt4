import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/dashboard_provider.dart';
import 'pages/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashboardProvider(),
      child: MaterialApp(
        title: 'Dashboard App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const DashboardPage(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'D4 TI Vokasi'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),

//       body: SingleChildScrollView(
//         child: Column(
//           children: [

//             //stack
//             Stack(
//               children: [
//                 Container(
//                   height: 150,
//                   width: double.infinity,
//                   color: Colors.deepPurple[200],
//                 ),
//                 const Positioned(
//                   bottom: 20,
//                   left: 20,
//                   child: Text(
//                     "Selamat Datang",
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 )
//               ],
//             ),

//             const SizedBox(height: 30),

//             //column dan container
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [

//                 const Text(
//                   'You have pushed the button this many times:',
//                 ),

//                 Text(
//                   '$_counter',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),

//                 const SizedBox(height: 20),

//                 Container(
//                   width: 200,
//                   height: 90,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Container 1",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 Container(
//                   width: 200,
//                   height: 90,
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Container 2",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 30),

//             //row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: const [
//                 Icon(Icons.home, size: 30),
//                 Icon(Icons.person, size: 30),
//                 Icon(Icons.settings, size: 30),
//               ],
//             ),

//             const SizedBox(height: 30),

//             //gridview
//             GridView.count(
//               crossAxisCount: 2,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               children: const [
//                 Card(child: Center(child: Text("Menu 1"))),
//                 Card(child: Center(child: Text("Menu 2"))),
//                 Card(child: Center(child: Text("Menu 3"))),
//                 Card(child: Center(child: Text("Menu 4"))),
//               ],
//             ),

//             const SizedBox(height: 30),

//             //listview
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: const Icon(Icons.notifications),
//                   title: Text("Notifikasi ${index + 1}"),
//                   subtitle: const Text("Isi notifikasi"),
//                 );
//               },
//             ),

//             const SizedBox(height: 20),
//           ],
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }