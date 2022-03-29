import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'main.dart';

class six extends StatefulWidget {
  int index;
  six(this.index);
  @override

  _sixState createState() => _sixState();
}

class _sixState extends State<six> {
  @override
  List<String> name5=['                           Comic Book                        '
    ,'                                           Detective Book                       ',
    '                                  Historical Fiction Book                        ',
    '                                      Horror books                               '];
  List<String> image5=["pic/comi.jpg","pic/dec.jpg","pic/hf.jpg","pic/hb.jpg"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(names[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
        body: GridView.builder(
          itemCount: name5.length,
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
                              return s5(index, name5,image5);
                            },
                          ));
                        }
                      else if(index==1)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return dec(index, name5,image5);
                          },
                        ));
                      }
                      else if(index==2)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return hist(index, name5,image5);
                          },
                        ));
                      }
                      else if(index==3)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return hor(index, name5,image5);
                          },
                        ));
                      }

                    },
                    child:  Marquee(
                      child:Text(name5[index],style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold)),
                      textDirection : TextDirection.ltr,
                      animationDuration: Duration(seconds: 2),
                      pauseDuration: Duration(milliseconds: 0000),
                      directionMarguee: DirectionMarguee.oneDirection,
                    ),
                  ),
                ),
                child: Image.asset(
                  image5[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
class s5 extends StatefulWidget {
  int index;
  List<String> name5;
  List<String> image5;
  s5(this.index,this.name5,this.image5);
  @override
  _s5State createState() => _s5State();
}

class _s5State extends State<s5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name5[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image5[widget.index],
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
              widget.name5[widget.index],
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
            child: Text("A comic book, also called comicbook, comic magazine or (in the United Kingdom and Ireland) simply comic, is a publication that consists of comics art in the form of sequential juxtaposed panels that represent individual scenes. Panels are often accompanied by descriptive prose and written narrative, usually, dialogue contained in word balloons emblematic of the comics art form.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class dec extends StatefulWidget {
  int index;
  List<String> name5;
  List<String> image5;
  dec(this.index,this.name5,this.image5);
  @override
  _decState createState() => _decState();
}
class _decState extends State<dec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name5[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image5[widget.index],
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
              widget.name5[widget.index],
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
            child: Text("Detective fiction is a subgenre of crime fiction and mystery fiction in which an investigator or a detective—either professional, amateur or retired—investigates a crime, often murder. The detective genre began around the same time as speculative fiction and other genre fiction in the mid-nineteenth century and has remained extremely popular, particularly in novels.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class hist extends StatefulWidget {
  int index;
  List<String> name5;
  List<String> image5;
  hist(this.index,this.name5,this.image5);
  @override
  _histState createState() => _histState();
}

class _histState extends State<hist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name5[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image5[widget.index],
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
              widget.name5[widget.index],
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
            child: Text("The historical books are a division of Christian Bibles, grouping 12 (or in some denominations more) books of the Old Testament. It includes the Former Prophets from the Nevi'im and two of the ungrouped books of Ketuvim of the Hebrew Bible together with the Book of Ruth and the Book of Esther which in the Hebrew are both found in the Five Megillot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class hor extends StatefulWidget {
  int index;List<String> name5; List<String> image5;
  hor(this.index,this.name5,this.image5);
  @override
  _horState createState() => _horState();
}

class _horState extends State<hor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name5[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image5[widget.index],
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
              widget.name5[widget.index],
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
            child: Text("Horror is the one of the largest genres of speculative fiction which is intended to frighten, scare, or disgust.[1] Literary historian J. A. Cuddon defined the horror story as a piece of fiction in prose of variable length... which shocks, or even frightens the reader, or perhaps induces a feeling of repulsion or loathing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}





