import 'package:entertainment/eight.dart';
import 'package:entertainment/fifth.dart';
import 'package:entertainment/fourth.dart';
import 'package:entertainment/nine.dart';
import 'package:entertainment/second.dart';
import 'package:entertainment/seven.dart';
import 'package:entertainment/six.dart';
import 'package:entertainment/ten.dart';
import 'package:entertainment/third.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

void main()
{
  runApp(MaterialApp(home: splash(),));
}
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState()
  {
    //TODO:implement initState
    super.initState();
    Future.delayed(Duration(seconds:2 )).then((value){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
       return first();
     },)) ;
    }
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Marquee(
          child:Text( "                          Entertainment                          ",style: TextStyle(fontSize: 40,color: Colors.deepPurple,fontWeight: FontWeight.bold)),
          textDirection : TextDirection.ltr,
          animationDuration: Duration(seconds: 3),
          pauseDuration: Duration(milliseconds: 0000),
          directionMarguee: DirectionMarguee.oneDirection,
        ),
      ),
    );
  }
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}
List<String> names=['Film', 'Dance', 'Music', 'Video Games', 'Books', 'Sporting Events', 'Food Festival', 'Amusement Parks', 'Tv Shows'];
List<String> imagelist=["pic/a.jpg","pic/b.jpg","pic/c.webp","pic/d.jpg","pic/e.jpg","pic/f.jpg","pic/g.jpg","pic/h.webp","pic/i.webp"];

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Entertainment",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.amber),),
      ),
       body:GridView.builder(
         itemCount:names.length ,
         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3 ) ,
         itemBuilder: (context, index) {
           return Card(
             child: GridTile(
                            footer: Container(
                              height: 30,
                              alignment: Alignment.center,
                              color: Colors.deepPurple,
                             // color: Color(A281DEFF),
                                child: InkWell(
                                  onTap: () {
                                    if(index==0)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return second(index);
                                      },));
                                    }
                                    else if(index==1)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return third(index);
                                      },));
                                    }
                                    else if(index==2)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return fourth(index);
                                      },));
                                    }
                                    else if(index==3)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return fifth(index);
                                      },));
                                    }
                                    else if(index==4)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return six(index);
                                      },));
                                    }
                                    else if(index==5)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return seven(index);
                                      },));
                                    }
                                    else if(index==6)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return eight(index);
                                      },));
                                    }
                                    else if(index==7)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return nine(index);
                                      },));
                                    }
                                    else if(index==8)
                                    {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return ten(index);
                                      },
                                      )
                                      );
                                    }
                                    },
                                  child:Text(names[index],style: TextStyle(fontSize:15,color: Colors.amber,fontWeight: FontWeight.bold)),
                                )
                            ),
               child: Image.asset(imagelist[index],fit: BoxFit.cover,),

             ),
           );
         },
       ),
    );
  }
}




