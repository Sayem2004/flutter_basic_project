//
// import "package:flutter/material.dart";
//
// import "common/boldText.dart";
// import "common/lightText.dart";
// import "common/button.dart";
// import "common/back_header.dart";
//
// class Revision extends StatefulWidget {
//   const Revision({super.key});
//
//   @override
//   State<Revision> createState() => _RevisionState();
// }
//
// class _RevisionState extends State<Revision> {
//   int selectedAnswer = -1;
//
//   final List<String> options = [
//     "ধ্বনিতত্ত্ব",
//     "রূপতত্ত্ব",
//     "বাক্যতত্ত্ব",
//     "অর্থতত্ত্ব",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
//           child: Column(
//             children: [
//               const BackHeader(
//                 title: "Revision · 1 of 24",
//                 subtitle: "Wrong one before · stage 2",
//                 doneText: "1 done",
//               ),
//               const SizedBox(height: 26),
//
//               const Spacer(),
//               CommonActionButton(
//                 title: "Next question",
//                 onPressed: () {},
//                 buttonWidth: double.infinity,
//                 margin: EdgeInsets.zero,
//                 backgroundColor: const Color.fromRGBO(240, 154, 0, 1),
//                 textColor: const Color.fromRGBO(11, 32, 51, 1),
//                 showIcon: false,
//                 showGradient: true,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
