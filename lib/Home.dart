import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi3/renkler.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Kolap',style: TextStyle(
            fontSize: 29, fontFamily: 'Pacifico',
          ),
          ),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: true,
      ),

      body: Center(

          child: Column(
            children:
          [
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Image.asset('images/pngwing.com.png',height: 250,),
            ),

            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5,top: 20),
                  child: Text('Dunk Hi Retro',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right:5,top: 20),
                  child: Text('\$ 48,08',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),),
                )
              ],
            ),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('code - 2234564',style: TextStyle(color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(onPressed: (){
                    print('Hello');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,

                  ),
                    child: const Text('Kalp',style: TextStyle(
                      color: Colors.white
                  ),
                  ),),
                )

              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 52),
                  child: Text('Size:',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Chip(number: 41),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Chip(number: 42),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Chip(number: 43),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Chip(number: 44),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){},
                      child: const Text('Add to Card',style:
                      TextStyle(fontSize:18,color: Colors.white)),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.redAccent)
                    )
                ],
              ),
            )
            
          ],
            
          ),
        ),
      );
  } 
}
class Chip extends StatelessWidget{
  
  int number;

  Chip({required this.number});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      
    },
      style: TextButton.styleFrom(backgroundColor: Colors.redAccent,
      ),
    child: Text('$number',style: const TextStyle(color: Colors.white),),
    );
  }
}
