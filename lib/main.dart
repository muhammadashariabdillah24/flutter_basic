import 'dart:math';

import 'package:flutter/material.dart';
import './widgets/kotak_warna.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Extract Widget"),
          ),
          body: GridView.builder(
            padding: EdgeInsets.all(20), // kasih padding ditepi aplikasi
            itemCount: 51, // tentuin berapa jumlah kotak yang ditampilkan
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context, index) => Container(
              color: Color.fromARGB(255, 60 + Random().nextInt(151),
                  60 + Random().nextInt(151), 60 + Random().nextInt(151)),
            ),
          )),
    );
  }
}




// MEMBAHAS TENTANG WIDGET BUILDER MENGGUNAKAN LISTVIEW BUILDER

// import 'dart:math';

// import 'package:flutter/material.dart';
// import './widgets/kotak_warna.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Extract Widget"),
//           ),
//           body: ListView.builder(
//             itemCount:
//                 10, // item count ini untuk membatasi jumlah kotak yang ditampilkan
//             itemBuilder: (context, index) => KotakWarna(
//                 text: "Kotak ke - ${index + 1}",
//                 warna: Color.fromRGBO(
//                     150 + Random().nextInt(200),
//                     150 + Random().nextInt(200),
//                     150 + Random().nextInt(200),
//                     0.5)),
//           )),
//     );
//   }
// }



// MEMBAHAS MAPPING PADA DART

// import 'dart:math';

// import 'package:flutter/material.dart';
// import './widgets/kotak_warna.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // MAPPING DENGAN LIST DENGAN WIDGET
//   // bisa langsung dipanggil variable nya, yaitu allItems
//   // List<KotakWarna> allItems = List.generate(
//   //     10,
//   //     (index) => KotakWarna(
//   //         text: "Kotak - 1",
//   //         warna: Color.fromARGB(255, 300 + Random().nextInt(256),
//   //             200 + Random().nextInt(256), 100 + Random().nextInt(256))));

//   List<Map<String, dynamic>> data = List.generate(
//       10,
//       (index) => {
//             "text": "Kotak - ${index + 1}",
//             "color": Color.fromARGB(255, 200 + Random().nextInt(256),
//                 200 + Random().nextInt(256), 200 + Random().nextInt(256))
//           });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Extract Widget"),
//           ),
//           body: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             padding: EdgeInsets.all(10),
//             child: Column(
//                 children: data
//                     .map(
//                       (e) => KotakWarna(
//                         text: e["text"],
//                         warna: e["color"],
//                       ),
//                     )
//                     .toList()),
//           )),
//     );
//   }
// }



// MEMBAHAS TENTANG EXTRACT WIDGET BEDA FILE
// lokasi extract widget ini ada ini
// ==> ./widget/kotak_warna.dart'

// import 'package:flutter/material.dart';
// import './widgets/kotak_warna.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Extract Widget"),
//           ),
//           body: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             padding: EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 KotakWarna(text: "Merah", warna: Colors.red),
//                 KotakWarna(text: "Merah", warna: Colors.red),
//                 KotakWarna(text: "Merah", warna: Colors.red),
//                 KotakWarna(text: "Merah", warna: Colors.red)
//               ],
//             ),
//           )),
//     );
//   }
// }




// MEMBAHAS TENTANG GRIDVIEW

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Center(
//                 child: Text("Judul"),
//               ),
//             ),
//             body: GridView(
//               padding: EdgeInsets.all(20),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 5,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 4 / 4),
//               children: [
//                 Container(
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   color: Colors.black45,
//                 ),
//                 Container(
//                   color: Colors.yellowAccent,
//                 ),
//                 Container(
//                   color: Colors.deepPurpleAccent,
//                 ),
//                 Container(
//                   color: Colors.greenAccent,
//                 ),
//                 Container(
//                   color: Colors.greenAccent,
//                 ),
//                 Container(
//                   color: Colors.indigo,
//                 ),
//               ],
//             )));
//   }
// }


// MEMBAHAS STACK

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("Judul"),
//         ),
//       ),
//       body: Stack(
//         alignment: AlignmentDirectional.centerEnd,
//         children: [
//           Container(
//             color: Colors.amber,
//             width: 200,
//             height: 200,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.cyanAccent,
//             width: 150,
//             height: 150,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }



// MEMBAHAS MAINAXISALIGNMENT DAN CROSSAXISALIGNMENT

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("Judul"),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             color: Colors.amber,
//             width: 50,
//             height: 50,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.cyanAccent,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 200,
//             height: 200,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }




// MEMBAHAS TENTANG LISTVIEW

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("Judul"),
//         ),
//       ),
      
//       // ListView adalah sebuah widget yang menampilkan list
//       // secara verticak maupun horizontal
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         // scrollDirection: Axis.horizontal,
//         children: [
//           Container(
//             color: Colors.amber,
//             width: 200,
//             height: 300,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.cyanAccent,
//             width: 100,
//             height: 200,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(
//               child: Text("Hallo"),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }



// MEMBAHAS TENTANG DIRECTION ROW, COlUMNS, SingleChildScrollView

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("Judul"),
//         ),
//       ),
//       body: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               Container(
//                 color: Colors.amber,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.cyanAccent,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 width: 100,
//                 height: 100,
//                 child: Center(
//                   child: Text("Hallo"),
//                 ),
//               ),
//             ],
//           )),
//     ));
//   }
// }

// Membahas image

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(BebasApp());
// }

// class BebasApp extends StatelessWidget {
//   const BebasApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.redAccent,
//               title: Text("Aplikasi pertamaku"),
//               centerTitle: true,
//             ),
//             body: Center(
//                 // Image Provider :
//                 // 1. Assets Image
//                 //    => gambar yang ada pada folder project
//                 //    => perlu daftar di pubspec.yaml
//                 // 2. Network Image
//                 //    => ambil dari internet
//                 //    => aplikasi butuh koneksi internet
//                 // 3. File Image
//                 // 4. Memory Image
//                 child: Image(
//                     image: NetworkImage(
//                         "https://i.ibb.co/9ZgJSYy/0f6df7706f5e.png")))));
//   }
// }

/* MEMBAHAS ELAVATED BUTTON */

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(BebasApp());
// }

// class BebasApp extends StatelessWidget {
//   const BebasApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.redAccent,
//               title: Text("Aplikasi pertamaku"),
//               centerTitle: true,
//             ),
//             body: Center(
//                 child: ElevatedButton(
//                     onPressed: () {
//                       print("Klik saya");
//                     }, child: Text("Klik saya")))));
//   }
// }

/* MEMBAHAS FLUTTER LOGO */

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(BebasApp());
// }

// class BebasApp extends StatelessWidget {
//   const BebasApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.redAccent,
//               title: Text("Aplikasi pertamaku"),
//               centerTitle: true,
//             ),
//             body: Center(
//               child: FlutterLogo(
//                 size: 200,
//               ),
//             )));
//   }
// }

/* MEMBAHAS CONTAINER DAN TEXT */

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(BebasApp());
// }

// class BebasApp extends StatelessWidget {
//   const BebasApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.redAccent,
//               title: Text("Aplikasi pertamaku"),
//               centerTitle: true,
//             ),
//             body: Center(
//                 child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.cyan,
//               child: Center(child: Text("Hallo ashari")),
//             ))));
//   }
// }
