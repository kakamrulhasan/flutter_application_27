import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 29,vertical: 1),
        
        child: Column(
          
          mainAxisSize: MainAxisSize.max,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ),
                
                ),
                Text('\$250',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.orange[900]
                ),),
              ],
            ),
             Container(
               alignment: Alignment.center,
             width: 315,
            height: 33,
             decoration: BoxDecoration(
              color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
            ),
              child: Text('Check out',style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
