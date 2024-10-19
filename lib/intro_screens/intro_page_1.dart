import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/please1.png"),
            fit: BoxFit.cover

          ),
        ),
      ),

    );
  }
}

// class IntroPage1 extends StatelessWidget{
//   const IntroPage1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         title: Text(
//           'Demo',
//         ),
//       ),
//       drawer: Drawer(
//           body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               FullScreenWidget(
//               child: Container(
//                 height: 200,
//                 width: 150,
//                 child: Image.asset(name,
//                 fit: BoxFit.cover,),
//
//               ),
//           ),
//               SizedBox(
//                 width: 10,
//               ),
//               Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(data
//                 )
//               ],))
//             ],
//           ),
//         )
//
//       ),
//     );
//   }
//   }


