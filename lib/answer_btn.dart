import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class answer_btn extends StatelessWidget {
  const answer_btn({super.key , required this.answerText,required this.onTap });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(answerText,style: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}
