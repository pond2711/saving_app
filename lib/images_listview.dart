import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);
  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  double douHeight = 100.0;
  double douWidth = 100.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(130.0, 10.0, 10.0, 10.0),
          child: Text('Hot Movie of the year 2012-2022',    //child use text style: Textstyle 
          style: TextStyle(fontSize: 20.0,
          fontWeight: FontWeight.bold
          ), 
        ),
      ),
    
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(                     // child containner
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M01THOR.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('THOR (Love and Thunder)',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG13',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: Action/Adventure',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Taika Waititi',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Rotten Tomato : 64%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 77%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 3.50',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
    
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M02GOT.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Game of Throne',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG18',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: Drama',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Weiss',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Rotten Tomato : 89%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 85%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 4.45',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M03SPR.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saving Private Ryan',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG18',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: War/History',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Steven Spielberg',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    
                    Text('Rotten Tomato : 94%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 95%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 4.80',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M04Midway.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Midway',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG13',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: War/History',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Roland Emmerich',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Rotten Tomato : 42%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 92%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 3.20',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M05GP.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kungfu Panda',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG-',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: Kids&Family',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Jennifer Yuh Nelson',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Rotten Tomato : 86%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 78%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 4.10',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
      Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M06Doraemon.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Doraemon',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG-',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: Kids&Family',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Takashi Yamazaki',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Rotten Tomato : 50%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 100%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 3.50',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M07Pubphe.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Love Destiny',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG-',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: Drama/History',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Pawat Panungkasiri',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Rotten Tomato : 90%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 100%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 4.70',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 2,
              ),
              ],
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: douHeight,
                    width: douWidth,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/M08RodFifa.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                      
                    ),
                    ),
                  ),
              
              Expanded(
                child:   
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bankok Traffic Love Story',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    Text('Rating: PG-',
                    style: TextStyle(fontSize: 15.0,color: Colors.black) 
                    ),
                    Text('Genre: Drama/History',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                    Text('Director: Adison Trisirikasem',style: TextStyle(color: Colors.black,fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
              Expanded(child: 
                Padding (padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(height: 25),
                    Text('Rotten Tomato : 90%',
                    style: TextStyle(fontSize: 15.0,color: Colors.red) 
                    ),
                  
                   Text('Audience : 95%',style: TextStyle(color: Colors.green,fontSize: 15.0),
                    ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Average : 4.60',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ), 
                  ]
                ),
                
                ),
                flex: 1,
              ),
              ],
              
            ),
      ],
    );
  }
}