import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
   CustomMaterialButton({required this.color,required this.onpressed,super.key});
   final Function() onpressed;
   final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: MaterialButton(
        onPressed: () {},
        color: color,
        child: const Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );

  }
}
