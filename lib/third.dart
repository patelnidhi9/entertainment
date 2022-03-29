import 'package:entertainment/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

class third extends StatefulWidget {
  int index;
  third(this.index);
  @override

  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  List<String> name2=['                       Ballet Dance                                  ',
    '                              Folk Dance                                                       ',
    '                    Hip Hop Dance                                                  ',
    '                  Khattak Dance                                                '];
  List<String> image2=["pic/ballet.jpg","pic/folk.jpg","pic/hiphop.jpg","pic/khattak.jpg"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(names[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
        body: GridView.builder(
          itemCount: name2.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: GridTile(
                footer: Container(
                  height: 20,
                  color: Colors.deepPurple,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      if(index==0)
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return s2(index, name2,image2);
                            },
                          ));
                        }
                     else if(index==1)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return folk(index, name2,image2);
                          },
                        ));
                      }
                      else if(index==2)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return hop(index, name2,image2);
                          },
                        ));
                      }
                      else if(index==3)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Khattak(index,name2,image2);
                          },
                        ));
                      }

                    },
                    child:  Marquee(
                      child:Text(name2[index],style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold)),
                      textDirection : TextDirection.ltr,
                      animationDuration: Duration(seconds: 2),
                      pauseDuration: Duration(milliseconds: 0000),
                      directionMarguee: DirectionMarguee.oneDirection,
                    ),
                  ),
                ),
                child: Image.asset(
                  image2[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
class s2 extends StatefulWidget {
  int index;
  List<String> name2;
  List<String> image2;
  s2(this.index,this.name2,this.image2);
  @override
  _s2State createState() => _s2State();
}
class _s2State extends State<s2> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name2[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image2[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name2[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("Ballet is a type of performance dance that originated during the Italian Renaissance in the fifteenth century and later developed into a concert dance form in France and Russia. It has since become a widespread and highly technical form of dance with its own vocabulary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class folk extends StatefulWidget {
  int index;
  List<String> name2;
  List<String> image2;
  folk(this.index,this.name2,this.image2 );
  @override
  _folkState createState() => _folkState();
}
class _folkState extends State<folk> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name2[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
             widget.image2[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
             widget.name2[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("A folk dance is a dance developed by people that reflect the life of the people of a certain country or region. Not all ethnic dances are folk dances. For example, ritual dances or dances of ritual origin are not considered to be folk dances. Ritual dances are usually called Religious dances because of their purpose. ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class hop extends StatefulWidget {
  int index;
  List<String> name2;
  List<String> image2;
  hop(this.index,this.name2,this.image2);
  @override
  _hopState createState() => _hopState();
}
class _hopState extends State<hop> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name2[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image2[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name2[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("Hip hop dance is a range of street dance styles primarily performed to hip hop music or that have evolved as part of hip hop culture. It is influenced by a wide range of styles that were created in the 1970s and made popular by dance crews in the United States. The television show Soul Train and the 1980s films Breakin', Beat Street, and Wild Style showcased these crews and dance styles in their early stages; therefore, giving hip-hop dance mainstream exposure.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class Khattak extends StatefulWidget {
  int index;
  List<String> name2;
  List<String> image2;
  Khattak(this.index,this.name2,this.image2);
  @override
  _KhattakState createState() => _KhattakState();
}

class _KhattakState extends State<Khattak> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name2[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image2[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name2[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("It was performed by Khattak warriors before going to wars in the time of Malik Shahbaz Khan Khattak, and then Khushal Khan Khattak. It was used as a war-preparation exercise and is known to be the only dance with swordplay. Khattak dance has become the national dance of Pakistan after Pakistan Army has been using it in international drills. Aside from the Pashtun's classical literature, popular ballads, the Pashtunwali (the common code of social values), the khattak is part of the group's collective identify.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}




