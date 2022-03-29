import 'package:entertainment/main.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

class second extends StatefulWidget {
  int index;

  second(this.index);

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  List<String> name1 = [
    '                  Action Film              ',
    '                  Comedy Film               ',
    '                Drama Film            ',
    '               Horror Film                ',
    '                Romance Film           ',
    '               Thriller Film             '];
  List<String> image1 = [
    "pic/action.jpg",
    "pic/comedy.jpg",
    "pic/drama.webp",
    "pic/horror.jpg",
    "pic/romance.webp",
    "pic/thrill.jpg"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            names[widget.index],
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),
        body: GridView.builder(
          itemCount: name1.length,
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
                              return s1(index, name1,image1);
                            },
                          )
                          );
                        }
                      else if(index==1)
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return com(index, name1,image1);
                            },
                          )
                          );
                        }
                      else if(index==2)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return drama(index, name1,image1);
                          },
                        )
                        );
                      }
                      else if(index==3)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return horror(index, name1,image1);
                          },
                        )
                        );
                      }
                      else if(index==4)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return rom(index, name1,image1);
                          },
                        )
                        );
                      }
                      else if(index==5)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return thrill(index, name1,image1);
                          },
                        )
                        );
                      }
                      },
                    child:  Marquee(
                      child:Text(name1[index],style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold)),
                      textDirection : TextDirection.ltr,
                      animationDuration: Duration(seconds: 3),
                      pauseDuration: Duration(milliseconds: 0000),
                      directionMarguee: DirectionMarguee.oneDirection,
                    )
                  ),
                ),
                child: Image.asset(
                  image1[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}


class s1 extends StatefulWidget {
  int index;
  List<String> name1;
  List<String> image1;
  s1(this.index, this.name1,this.image1 );

  @override
  _s1State createState() => _s1State();
}
class _s1State extends State<s1> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            widget.name1[widget.index],
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
               widget.image1[widget.index],
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
                widget.name1[widget.index],
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
              height: 500,
              width: 400,
              child: Text("Hollywood Movies:Black Panther, Avengers: Endgame, Guardians of the Galaxy,Star Wars: Episode IV - A New Hope .                "
                  "Action Bollywood Movies: Baaghi,Tanhaji,Baahubali,Gangs of Wasseypur",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.amber),),
            ),
          ],
        ),
    );
  }
}


class com extends StatefulWidget {
  int index;
  List<String> name1;
  List<String> image1;
  com(this.index,this.name1,this.image1);
  @override
  _comState createState() => _comState();
}

class _comState extends State<com> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name1[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image1[widget.index],
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
              widget.name1[widget.index],
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
            height: 500,
            width: 400,
            child: Text("A comedy film is a category of film which emphasizes humor. These films are designed to make the audience laugh through amusement. Films in this style traditionally have a happy ending (black comedy being an exception). One of the oldest genres in film—and derived from the classical comedy in theatre—some of the earliest silent films were comedies, as slapstick comedy often relies on visual depictions, without requiring sound",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}


class drama extends StatefulWidget {
  int index;
  List<String> name1;
  List<String> image1;
  drama(this.index,this.name1,this.image1);
  @override
  _dramaState createState() => _dramaState();
}

class _dramaState extends State<drama> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name1[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image1[widget.index],
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
              widget.name1[widget.index],
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
            child: Text("In film and television, drama is a category of narrative fiction (or semi-fiction) intended to be more serious than humorous in tone. Drama of this kind is usually qualified with additional terms that specify its particular super-genre, macro-genre, or micro-genre,[2] such as soap opera, police crime drama, political drama, legal drama, historical drama, domestic drama, teen drama, and comedy-drama (dramedy). These terms tend to indicate a particular setting or subject-matter, or else they qualify the otherwise serious tone of a drama with elements that encourage a broader range of moods.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class horror extends StatefulWidget {
  int index;
  List<String> name1;
  List<String> image1;
  horror(this.index,this.name1,this.image1);
  @override
  _horrorState createState() => _horrorState();
}

class _horrorState extends State<horror> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name1[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image1[widget.index],
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
              widget.name1[widget.index],
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
            child: Text("A horror film is one that seeks to elicit fear or disgust in its audience for entertainment purposes.[1] Initially inspired by literature from authors such as Edgar Allan Poe, Bram Stoker, and Mary Shelley, horror has existed as a film genre for more than a century. Horror may also overlap with the fantasy, supernatural fiction, and thriller genres.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class rom extends StatefulWidget {
  int index;
  List<String> name1;
  List<String> image1;
  rom( this.index,this.name1,this.image1);
  @override
  _romState createState() => _romState();
}
class _romState extends State<rom> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name1[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image1[widget.index],
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
              widget.name1[widget.index],
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
            child: Text("Romance films or romance movies are romantic love stories recorded in visual media for broadcast in theaters and on TV that focus on passion, emotion, and the affectionate romantic involvement of the main characters and the journey that their love takes them through dating, courtship or marriage.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class thrill extends StatefulWidget {
  int index;
  List<String> name1;
  List<String> image1;
  thrill( this.index,this.name1,this.image1);
  @override
  _thrillState createState() => _thrillState();
}

class _thrillState extends State<thrill> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name1[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image1[widget.index],
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
              widget.name1[widget.index],
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
            child: Text("Thriller film, also known as suspense film or suspense thriller, is a broad film genre that evokes excitement and suspense in the audience.The suspense element found in most films' plots is particularly exploited by the filmmaker in this genre. Tension is created by delaying what the audience sees as inevitable, and is built through situations that are menacing or where escape seems impossible.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}







