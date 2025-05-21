import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New trend'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cartShopping),
            onPressed: () {},
          ),
        ],
      ),
      body:  
      Padding(
        padding: const EdgeInsets.only(top:70,left: 10,right: 10),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 70,
            crossAxisSpacing:1,
            childAspectRatio: 1.5,
          ),
          itemBuilder:(context, index) =>  Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
          
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
          
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        
                        top: -50,
                        left: 40,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/generated.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('welcome'),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 250,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('dfkdh'),
                              
                                  Icon(FontAwesomeIcons.solidHeart),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
      );
  
  }
}
