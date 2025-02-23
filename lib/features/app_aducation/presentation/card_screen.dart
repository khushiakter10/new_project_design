// import 'package:flutter/material.dart';
//
//
// class CreditCardPage extends StatefulWidget {
//   @override
//   _CreditCardPageState createState() => _CreditCardPageState();
// }
//
// class _CreditCardPageState extends State<CreditCardPage> {
//   String cardNumber = '';
//   String expiryDate = '';
//   String cardHolderName = '';
//   String cvvCode = '';
//   bool isCvvFocused = false;
//
//   // Form field controllers
//   final TextEditingController cardNumberController = TextEditingController();
//   final TextEditingController expiryDateController = TextEditingController();
//   final TextEditingController cardHolderController = TextEditingController();
//   final TextEditingController cvvController = TextEditingController();
//
//   void onSubmit() {
//     // Handle form submission
//     setState(() {
//       cardNumber = cardNumberController.text;
//       expiryDate = expiryDateController.text;
//       cardHolderName = cardHolderController.text;
//       cvvCode = cvvController.text;
//     });
//
//     print('Card Number: $cardNumber');
//     print('Expiry Date: $expiryDate');
//     print('Card Holder: $cardHolderName');
//     print('CVV: $cvvCode');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Credit Card Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Display the Credit Card Widget
//             CreditCardWidget(
//               cardNumber: cardNumber.isEmpty ? '**** **** **** ****' : cardNumber,
//               expiryDate: expiryDate.isEmpty ? 'MM/YY' : expiryDate,
//               cardHolderName: cardHolderName.isEmpty ? 'Card Holder' : cardHolderName,
//               cvvCode: cvvCode.isEmpty ? '***' : cvvCode,
//               showBackView: isCvvFocused,
//               onCreditCardWidgetChange: (CreditCardBrand) {
//                 // You can also handle credit card brand change here
//               },
//             ),
//
//             SizedBox(height: 40),
//
//             // Credit Card Form for user input
//             CreditCardForm(
//               onCreditCardModelChange: (CreditCardModel data) {
//                 setState(() {
//                   cardNumber = data.cardNumber;
//                   expiryDate = data.expiryDate;
//                   cardHolderName = data.cardHolderName;
//                   cvvCode = data.cvvCode;
//                 });
//               },
//               themeColor: Colors.blue,
//               obscureCvv: true, // Hide CVV for security
//               obscureNumber: true, // Hide card number for security
//               cardNumberDecoration: InputDecoration(
//                 labelText: 'Card Number',
//                 hintText: 'xxxx xxxx xxxx xxxx',
//                 border: OutlineInputBorder(),
//               ),
//               expiryDateDecoration: InputDecoration(
//                 labelText: 'Expiry Date',
//                 hintText: 'MM/YY',
//                 border: OutlineInputBorder(),
//               ),
//               cardHolderDecoration: InputDecoration(
//                 labelText: 'Card Holder',
//                 border: OutlineInputBorder(),
//               ),
//               cvvCodeDecoration: InputDecoration(
//                 labelText: 'CVV',
//                 hintText: 'xxx',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//
//             SizedBox(height: 20),
//
//             // Submit button
//             ElevatedButton(
//               onPressed: onSubmit,
//               child: Text('Submit Card Details'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
