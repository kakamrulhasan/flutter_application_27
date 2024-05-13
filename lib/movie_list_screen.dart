import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_27/CartBottomNavBar.dart';
import 'package:flutter_application_27/movie.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        backgroundColor: Colors.amber[800],
      ),
      backgroundColor: Colors.amber[50],
      body: ListView.builder(
        
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            Movie movie = movieList[index];
            return Column(
              children: [
                
                Container(
                   height: 110,
                   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    
                   ),
                   child: Row(
                    children: [Container(
                      height: 110,
                      margin: EdgeInsets.only(right: 11),
                      child: Image.asset(movie.image,
                      fit: BoxFit.fitWidth,
                      ),
                      
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(movie.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                        ),
                        Text("\$"+movie.price.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                    ),
                    Spacer(),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5),
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.more_vert,color: Colors.black,),
                        Row( 
                          children: [
                          
                            Container(
                            
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  ),
                                ]
                              ),
                              child: Icon( 
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                              
                            ),
                            
                            Container(
                              
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('01',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  ),
                                  
                                ]
                              ),
                              child: Icon(
                                CupertinoIcons.add,
                                size: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    ),
                    ],
                   ),

                )
              ],
            );
          }
          ),
          bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
